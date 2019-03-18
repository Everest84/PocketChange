USE [Commerce]

INSERT INTO dbo.GoalType
VALUES 
(0, 'Save At Least', 'Every Month'),
(1, 'Save At Least', 'Overall'),
(2, 'Spend Less Than', 'Every Week'),
(3, 'Spend Less Than', 'Every Month'),
(4, 'Spend Less Than', 'Overall');


SET IDENTITY_INSERT dbo.AccountType ON

INSERT INTO dbo.AccountType(TypeId, Name)
VALUES
(0, 'Savings'),
(1, 'Checking'),
(2, 'Credit Card');

INSERT INTO dbo.UserRegistration
VALUES
(CONVERT(UNIQUEIDENTIFIER, '7AAAC3DA-7841-4773-8090-A4B509B0132D'), 'CustA', '842F1B809F1545D575F100DD19CCA343FEFEB941A100288E5B914A3DDD90D2AA')
(CONVERT(UNIQUEIDENTIFIER, '94C5EDFE-1824-4FBB-B0E2-E09BD304BD7B'), 'CustB', '1FB3037658DC463EADBBBCD8A7AD7290270BC2D4479A53FE96F0EE580531DE0A');

INSERT INTO dbo.UserCredentials
VALUES
(CONVERT(UNIQUEIDENTIFIER, '7AAAC3DA-7841-4773-8090-A4B509B0132D'), 'rwjmvULEGbUf9TF4YJgjytZQz8sKWqGdTjZxBQZngpGVHQGug2MbwqeRMr6WkKPz7kMSTBhXnmsraynVULSdxnEex5Wa5L7tpW4dgNJdMYgmn6KqrxDVHD2yaG7F65yY4uLGBn6JFSgf8YNZhvv565nx9JWGGJ84zqpBaQvSSEDfrjE8ZMvn5GHGGMS2YpbM6MxhRcZ4WXeLtktXrb29RwppEbdbHRYvMSbRUqMpSdcC4MabxkDRMSKcfdg94jK'),
(CONVERT(UNIQUEIDENTIFIER, '94C5EDFE-1824-4FBB-B0E2-E09BD304BD7B'), 'AtffvtybE4daWdZ6pNNzJNrpGW9t7nRaKJ4RpVgPPjw5AVMJHhMnNKu24eGd9hVrAbEKeBZrZVDZKCVVx4x2Ez5Uaut54jbS2nB9wx67v4vVJxh79wcVTJyW6kDwyBcVDTzFyvKB7daSXSRmVCp3L4HA6XK6Ard8yFzdhxhkgdeFeM3QMnTh7Je7sAn8Bd7ABgM2hPp4KphnLGmfFtmsHutzdgwD5PxMVvARnXjVw8m8bJYYcxCn84Hzp3g2J4t');

INSERT INTO dbo.Account (AccountId, AccountNumber, UserId, TypeId, ReadOnly)
Values
(CONVERT(UNIQUEIDENTIFIER, '191BE94B-CE3F-4442-ABD0-863EA1F3697C'), '211111110', CONVERT(UNIQUEIDENTIFIER, '7AAAC3DA-7841-4773-8090-A4B509B0132D'), 1, 0),
(CONVERT(UNIQUEIDENTIFIER, '4BAC57E1-FFB2-49D1-BEA4-929663908AA2'), '3111 3450 2930 9203', CONVERT(UNIQUEIDENTIFIER, '7AAAC3DA-7841-4773-8090-A4B509B0132D'), 2, 0),
(CONVERT(UNIQUEIDENTIFIER, '66C3B617-6753-4DC7-90A5-74E6CB744AD0'), '3011111130', CONVERT(UNIQUEIDENTIFIER, '7AAAC3DA-7841-4773-8090-A4B509B0132D'), 0, 0),
(CONVERT(UNIQUEIDENTIFIER, 'E0B2E9E8-2CE3-4A70-9DFF-35A479745EB2'), '411111111', CONVERT(UNIQUEIDENTIFIER, '94C5EDFE-1824-4FBB-B0E2-E09BD304BD7B'), 1, 0),
(CONVERT(UNIQUEIDENTIFIER, '98F0103B-33A1-444B-8A88-C2E7851639A4'), '8222222228', CONVERT(UNIQUEIDENTIFIER, '94C5EDFE-1824-4FBB-B0E2-E09BD304BD7B'), 0, 0);

INSERT INTO dbo.Goal
VALUES
(NewID(), CONVERT(UNIQUEIDENTIFIER, '7AAAC3DA-7841-4773-8090-A4B509B0132D'), CONVERT(UNIQUEIDENTIFIER, '66C3B617-6753-4DC7-90A5-74E6CB744AD0'), 0, '2019-03-10', '2019-10-10'),
(NewID(), CONVERT(UNIQUEIDENTIFIER, '94C5EDFE-1824-4FBB-B0E2-E09BD304BD7B'), CONVERT(UNIQUEIDENTIFIER, '98F0103B-33A1-444B-8A88-C2E7851639A4'), 1, '2019-01-26', '2019-07-26');