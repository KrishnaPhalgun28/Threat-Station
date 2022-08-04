// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KeyFeatureModel {
  final String label;
  final IconData iconData;

  KeyFeatureModel(this.label, this.iconData);
}

final Map<String, KeyFeatureModel> keyFeatureIcons = {
  'Authentication': KeyFeatureModel(
    'Authentication',
    FontAwesomeIcons.userShield,
  ),
  'Authorization': KeyFeatureModel(
    'Authorization',
    FontAwesomeIcons.userLock,
  ),
  'Cryptography': KeyFeatureModel(
    'Cryptography',
    FontAwesomeIcons.key,
  ),
  'Deserialization': KeyFeatureModel(
    'Object deserialization',
    FontAwesomeIcons.objectUngroup,
  ),
  'Data.Parsing.Media': KeyFeatureModel(
    'AV media parsing',
    FontAwesomeIcons.photoFilm,
  ),
  'DynamicExecution': KeyFeatureModel(
    'Dynamic command execution',
    FontAwesomeIcons.audible,
  ),
  'CloudServices.Hosting': KeyFeatureModel(
    'Cloud Services: Hosting',
    FontAwesomeIcons.microsoft,
  ),
  'CloudServices.Application': KeyFeatureModel(
    'Cloud Services: Cloud application',
    FontAwesomeIcons.globe,
  ),
  'CloudServices.DataStorage': KeyFeatureModel(
    'Cloud Services: Cloud data storage',
    FontAwesomeIcons.cloudArrowUp,
  ),
  'CloudServices.BigData': KeyFeatureModel(
    'Cloud Services: Big data',
    FontAwesomeIcons.warehouse,
  ),
  'CloudServices.SocialMedia': KeyFeatureModel(
    'Cloud Services: Social media',
    FontAwesomeIcons.facebookSquare,
  ),
  'CloudServices.Finance.eCommerce': KeyFeatureModel(
    'Cloud Services: eCommerce',
    FontAwesomeIcons.cartShopping,
  ),
  'Web.Analytics': KeyFeatureModel(
    'Cloud Services: Web Analytics',
    FontAwesomeIcons.flagCheckered,
  ),
  '.AdvertisingNetwork': KeyFeatureModel(
    'Cloud Services: Advertising network',
    FontAwesomeIcons.rectangleAd,
  ),
  'Cookies.Attr.HttpOnly': KeyFeatureModel(
    'Cookie Attributes: HttpOnly attribute',
    FontAwesomeIcons.js,
  ),
  'Cookies.Attr.Secure': KeyFeatureModel(
    'Cookie Attributes: Secure attribute',
    FontAwesomeIcons.shieldHalved,
  ),
  'Cookies.Attr.Lifetime': KeyFeatureModel(
    'Cookie Attributes: Lifetime attribute',
    FontAwesomeIcons.heartPulse,
  ),
  'Cookies.Attr.Strict': KeyFeatureModel(
    'Cookie Attributes: Strict attribute',
    FontAwesomeIcons.gavel,
  ),
  'Cookies.Attr.SameSite': KeyFeatureModel(
    'Cookie Attributes: SameSite attribute',
    FontAwesomeIcons.objectGroup,
  ),
  'Cookies.Attr.Expires': KeyFeatureModel(
    'Cookie Attributes: Expires attribute',
    FontAwesomeIcons.calendarXmark,
  ),
  'Cookies.Attr.Domain': KeyFeatureModel(
    'Cookie Attributes: Domain attribute',
    FontAwesomeIcons.hotel,
  ),
  'DBMS.SQLite': KeyFeatureModel(
    'Databases: SQLite database',
    FontAwesomeIcons.table,
  ),
  'DBMS.NOSQL': KeyFeatureModel(
    'Databases: NOSQL database',
    FontAwesomeIcons.mdb,
  ),
  'DBMS.PostgreSQL': KeyFeatureModel(
    'Databases: PostgreSQL Database',
    FontAwesomeIcons.boxArchive,
  ),
  'DBMS.Oracle': KeyFeatureModel(
    'Databases: Database ORM',
    FontAwesomeIcons.map,
  ),
  'DBMS.General': KeyFeatureModel(
    'Databases: General database',
    FontAwesomeIcons.floppyDisk,
  ),
  '.Build': KeyFeatureModel(
    'Development: Build',
    FontAwesomeIcons.building,
  ),
  'Code.Repo': KeyFeatureModel(
    'Development: Source Code Repository',
    FontAwesomeIcons.boxArchive,
  ),
  'Code.CI': KeyFeatureModel(
    'Development: Continuous integration',
    FontAwesomeIcons.vials,
  ),
  'Framework.Development': KeyFeatureModel(
    'Development: Development framework',
    FontAwesomeIcons.dev,
  ),
  'Framework.Testing': KeyFeatureModel(
    'Development: Testing framework',
    FontAwesomeIcons.vial,
  ),
  'OpenSourceLicense': KeyFeatureModel(
    'Development: Open source',
    FontAwesomeIcons.github,
  ),
  'Framework.CMS': KeyFeatureModel(
    'Development: Content management system',
    FontAwesomeIcons.wordpress,
  ),
  'Metadata.Infrastructure': KeyFeatureModel(
    'Development: Infrastructure as Code',
    FontAwesomeIcons.dolly,
  ),
  'Permissions.PhoneCalls': KeyFeatureModel(
    'Device Permissions: Phone calls',
    FontAwesomeIcons.phone,
  ),
  'Permissions.SMS': KeyFeatureModel(
    'Device Permissions: SMS',
    FontAwesomeIcons.comment,
  ),
  'Permissions.Email': KeyFeatureModel(
    'Device Permissions: Email',
    FontAwesomeIcons.envelope,
  ),
  'Permissions.CalendarEvents': KeyFeatureModel(
    'Device Permissions: Calendar events',
    FontAwesomeIcons.calendarDays,
  ),
  'Permissions.Camera': KeyFeatureModel(
    'Device Permissions: Camera',
    FontAwesomeIcons.camera,
  ),
  'Permissions.MediaLibrary': KeyFeatureModel(
    'Device Permissions: Media library',
    FontAwesomeIcons.fileAudio,
  ),
  'Permissions.VoiceCommand': KeyFeatureModel(
    'Device Permissions: Voice command',
    FontAwesomeIcons.bullhorn,
  ),
  'Permissions.Microphone': KeyFeatureModel(
    'Device Permissions: Microphone',
    FontAwesomeIcons.microphone,
  ),
  'Network.Connection': KeyFeatureModel(
    'General Features: Network communications',
    FontAwesomeIcons.networkWired,
  ),
  'FileOperation.Read': KeyFeatureModel(
    'General Features: File read',
    FontAwesomeIcons.file,
  ),
  'FileOperation.Write': KeyFeatureModel(
    'General Features: File write',
    FontAwesomeIcons.penToSquare,
  ),
  'FileOperation.Delete': KeyFeatureModel(
    'General Features: File delete',
    FontAwesomeIcons.trash,
  ),
  'Multiprocessing': KeyFeatureModel(
    'General Features: Multi-threaded processing',
    FontAwesomeIcons.codeBranch,
  ),
  'Logging': KeyFeatureModel(
    'General Features: Logging',
    FontAwesomeIcons.clock,
  ),
  'Data.Parsing.XML': KeyFeatureModel(
    'General Features: Processes XML',
    FontAwesomeIcons.fileCode,
  ),
  'Data.Parsing.JSON': KeyFeatureModel(
    'General Features: Processes JSON',
    FontAwesomeIcons.fileLines,
  ),
  'Data.Media': KeyFeatureModel(
    'Miscellenous: AV media',
    FontAwesomeIcons.circlePlay,
  ),
  'Data.Zipfile': KeyFeatureModel(
    'Miscellenous: Zip file processing',
    FontAwesomeIcons.fileZipper,
  ),
  'HTMLForm.Defined': KeyFeatureModel(
    'Miscellenous: HTML form',
    FontAwesomeIcons.windowMaximize,
  ),
  'Exception.Caught': KeyFeatureModel(
    'Miscellenous: Exception caught',
    FontAwesomeIcons.meteor,
  ),
  'Hardware': KeyFeatureModel(
    'Miscellenous: Specialized hardware',
    FontAwesomeIcons.keyboard,
  ),
  'Comment.Fix': KeyFeatureModel(
    'Miscellenous: Fix comments',
    FontAwesomeIcons.toolbox,
  ),
  'Comment.Suspicious': KeyFeatureModel(
    'Miscellenous: Suspicious comments',
    FontAwesomeIcons.fireFlameSimple,
  ),
  'Metadata.Platform.OS': KeyFeatureModel(
    'OS Integration: OS platform',
    FontAwesomeIcons.linux,
  ),
  'Application.Container': KeyFeatureModel(
    'OS Integration: App container',
    FontAwesomeIcons.box,
  ),
  'OS.Environment.Read': KeyFeatureModel(
    'OS Integration: Environment variable read',
    FontAwesomeIcons.tree,
  ),
  'Process.ListRequest': KeyFeatureModel(
    'OS Integration: OS process scan',
    FontAwesomeIcons.binoculars,
  ),
  'OS.SystemRegistry.Read': KeyFeatureModel(
    'OS Integration: Windows registry read',
    FontAwesomeIcons.cubes,
  ),
  'Application.Type.Client.Service': KeyFeatureModel(
    'OS Integration: Local system service',
    FontAwesomeIcons.doorOpen,
  ),
  'OS.UserAccount.Write': KeyFeatureModel(
    'OS System Changes: System user write',
    FontAwesomeIcons.userPlus,
  ),
  'ACL.Write': KeyFeatureModel(
    'OS System Changes: Permissions write',
    FontAwesomeIcons.fileSignature,
  ),
  'SystemToken.Write': KeyFeatureModel(
    'OS System Changes: System token write',
    FontAwesomeIcons.bandcamp,
  ),
  'OS.Environment.Write': KeyFeatureModel(
    'OS System Changes: Environment variable write',
    FontAwesomeIcons.tree,
  ),
  'SystemRegistry.Write': KeyFeatureModel(
    'OS System Changes: Windows registry write',
    FontAwesomeIcons.screwdriverWrench,
  ),
  'SystemRegistry.ACL': KeyFeatureModel(
    'OS System Changes: Windows registry ACL',
    FontAwesomeIcons.unlock,
  ),
  '.CompilerSettings': KeyFeatureModel(
    'Pipeline Tools: Compiler Settings',
    FontAwesomeIcons.listUl,
  ),
  'Packaging.CodeSigning': KeyFeatureModel(
    'Pipeline Tools: Code Signing',
    FontAwesomeIcons.signature,
  ),
  '.Linter': KeyFeatureModel(
    'Pipeline Tools: Linters',
    FontAwesomeIcons.spellCheck,
  ),
  '.StaticAnalysis': KeyFeatureModel(
    'Pipeline Tools: Static Analyzers',
    FontAwesomeIcons.microscope,
  ),
  'Pipeline.Packaging': KeyFeatureModel(
    'Pipeline Tools: Packaging',
    FontAwesomeIcons.truckRampBox,
  ),
  'Headers.HSTS': KeyFeatureModel(
    'Session Headers: Strict Transport Security (HSTS)',
    FontAwesomeIcons.hand,
  ),
  'Headers.CSP': KeyFeatureModel(
    'Session Headers: Content Security Policy (CSP)',
    FontAwesomeIcons.dungeon,
  ),
  'Headers.X-Frame': KeyFeatureModel(
    'Session Headers: X-Frame-Options',
    FontAwesomeIcons.crop,
  ),
  'Headers.XSS': KeyFeatureModel(
    'Session Headers: Cross Site Scripting (X-XSS)',
    FontAwesomeIcons.xmark,
  ),
  'Headers.HPKP': KeyFeatureModel(
    'Session Headers: Public Key Pins (HPKP) Deprecated',
    FontAwesomeIcons.thumbtack,
  ),
  'Headers.Expect-CT': KeyFeatureModel(
    'Session Headers: Certificate Transparency (Expect-CT)',
    FontAwesomeIcons.certificate,
  ),
  'Headers.X-Content-Type': KeyFeatureModel(
    'Session Headers: X-Content-Type Options',
    FontAwesomeIcons.borderTopLeft,
  ),
  'Headers.Clear-Site-Data': KeyFeatureModel(
    'Session Headers: Clear Site Data',
    FontAwesomeIcons.fireFlameCurved,
  ),
  'Sensitive.Identification': KeyFeatureModel(
    'Sensitive Data: Personally identifiable data',
    FontAwesomeIcons.addressCard,
  ),
  'Sensitive.Medical': KeyFeatureModel(
    'Sensitive Data: Medical data',
    FontAwesomeIcons.stethoscope,
  ),
  'Sensitive.Credentials': KeyFeatureModel(
    'Sensitive Data: Credentials',
    FontAwesomeIcons.userSecret,
  ),
  'Sensitive.UserAccount': KeyFeatureModel(
    'Sensitive Data: Account or membership',
    FontAwesomeIcons.circleUser,
  ),
  'Sensitive.ProductKey': KeyFeatureModel(
    'Sensitive Data: Product key',
    FontAwesomeIcons.compactDisc,
  ),
  'CryptoCurrency': KeyFeatureModel(
    'Sensitive Data: Crypto currency',
    FontAwesomeIcons.bitcoin,
  ),
  'Sensitive.Secret': KeyFeatureModel(
    'Sensitive Data: Sensitive secret',
    FontAwesomeIcons.keycdn,
  ),
  'Sensitive.Financial': KeyFeatureModel(
    'Sensitive Data: Financial data',
    FontAwesomeIcons.moneyBill,
  ),
  'WebApp.Media.Audio': KeyFeatureModel(
    'Web App Features: HTML5 Audio',
    FontAwesomeIcons.volumeHigh,
  ),
  'WebApp.Media.GetUserMedia': KeyFeatureModel(
    'Web App Features: HTML5 GetUserMedia',
    FontAwesomeIcons.circlePlay,
  ),
  'IndexedDB': KeyFeatureModel(
    'Web App Features: HTML5 IndexedDB',
    FontAwesomeIcons.circleDown,
  ),
  'WebApp.Communications.PostMessage': KeyFeatureModel(
    'Web App Features: HTML5 PostMessage',
    FontAwesomeIcons.shareFromSquare,
  ),
  'WebApp.Communications.ServerEvent': KeyFeatureModel(
    'Web App Features: HTML5 Server Sent Event',
    FontAwesomeIcons.satelliteDish,
  ),
  'WebApp.Storage.FileReader': KeyFeatureModel(
    'Web App Features: HTML5 File Reader',
    FontAwesomeIcons.bookOpen,
  ),
  'WebApp.Worker': KeyFeatureModel(
    'Web App Features: HTML5 Worker',
    FontAwesomeIcons.peopleCarryBox,
  ),
  'WebApp.Storage.FileUpload': KeyFeatureModel(
    'Web App Features: HTML5 File Upload',
    FontAwesomeIcons.fileArrowUp,
  ),
};
