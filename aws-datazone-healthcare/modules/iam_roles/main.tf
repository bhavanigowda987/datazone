
data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["glue.amazonaws.com", "lakeformation.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "datazone_role" {
  name               = "DataZoneHealthcareRole"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}
