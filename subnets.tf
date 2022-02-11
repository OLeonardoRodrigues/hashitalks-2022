resource "aws_subnet" "this" {
  count       = length(var.public_subnets)

  vpc_id      = aws_vpc.this.id
  cidr_block  = element(concat(var.public_subnets, [""]), count.index)

  tags        = merge(
    {
      "Name" = format(
        "${var.name}-subnet-${count.index}"
      )
    },
    var.tags,
  )
}
