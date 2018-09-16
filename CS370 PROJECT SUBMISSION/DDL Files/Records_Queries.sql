SELECT recordTitle, estimValue
FROM Records
ORDER BY estimValue DESC
LIMIT 10;

SELECT subCategoryName, estimValue, recordTitle
FROM Records
INNER JOIN MusicCategory ON MusicCategory.categoryID = Records.categoryID
ORDER BY estimValue DESC
LIMIT 10 ;
 
SELECT recordTitle, estimValue, price, (estimValue - price) as value
FROM Records
ORDER BY value DESC
LIMIT 10 ;

SELECT artistName, recordTitle
FROM Records
INNER JOIN Artists ON Records.artistID = Artists.artistID
WHERE artistName = 'Microwave';

SELECT artistName, recordTitle
FROM Records INNER JOIN Artists 
ON Records.artistID = Artists.artistID
WHERE releaseYear =2016;

SELECT recordTitle
FROM Records INNER JOIN RecordCompany 
ON Records.companyID = RecordCompany.companyID
WHERE companyName = "SideOneDummy";

SELECT recordTitle, recordSize, mainCategoryName
FROM Records
INNER JOIN MusicCategory ON Records.categoryID = MusicCategory.categoryID
WHERE mainCategoryName = 'Rock';

SELECT recordTitle
FROM Records
INNER JOIN MusicCategory ON Records.categoryID = MusicCategory.categoryID
WHERE recordSize =33
AND subCategoryName = "Emo"
AND recordCondition = "F";

SELECT recordTitle, estimValue, artistName
FROM Records
INNER JOIN MusicCategory ON Records.categoryID = MusicCategory.categoryID
INNER JOIN Artists ON Records.artistID = Artists.artistID
WHERE mainCategoryName = "Pop"
AND estimValue <100;
  
SELECT SUM( estimValue )
FROM MusicCategory
JOIN Records ON MusicCategory.categoryID = Records.categoryID
WHERE mainCategoryName = 'Rock';
