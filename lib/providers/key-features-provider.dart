// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatureData {
  final String label;
  final IconData iconData;

  FeatureData(this.label, this.iconData);
}

final Map<String, FeatureData> keyFeatureIcons = {
  'Authentication': FeatureData(
    'Authentication',
    FontAwesomeIcons.userShield,
  ),
  'Authorization': FeatureData(
    'Authorization',
    FontAwesomeIcons.userLock,
  ),
  'Cryptography': FeatureData(
    'Cryptography',
    FontAwesomeIcons.key,
  ),
  'Deserialization': FeatureData(
    'Object deserialization',
    FontAwesomeIcons.objectUngroup,
  ),
  'Data.Parsing.Media': FeatureData(
    'AV media parsing',
    FontAwesomeIcons.photoFilm,
  ),
  'DynamicExecution': FeatureData(
    'Dynamic command execution',
    FontAwesomeIcons.audible,
  ),
  'CloudServices.Hosting': FeatureData(
    'Cloud Services: Hosting',
    FontAwesomeIcons.microsoft,
  ),
  'CloudServices.Application': FeatureData(
    'Cloud Services: Cloud application',
    FontAwesomeIcons.globe,
  ),
  'CloudServices.DataStorage': FeatureData(
    'Cloud Services: Cloud data storage',
    FontAwesomeIcons.cloudArrowUp,
  ),
  'CloudServices.BigData': FeatureData(
    'Cloud Services: Big data',
    FontAwesomeIcons.warehouse,
  ),
  'CloudServices.SocialMedia': FeatureData(
    'Cloud Services: Social media',
    FontAwesomeIcons.facebookSquare,
  ),
  'CloudServices.Finance.eCommerce': FeatureData(
    'Cloud Services: eCommerce',
    FontAwesomeIcons.cartShopping,
  ),
  'Web.Analytics': FeatureData(
    'Cloud Services: Web Analytics',
    FontAwesomeIcons.flagCheckered,
  ),
  '.AdvertisingNetwork': FeatureData(
    'Cloud Services: Advertising network',
    FontAwesomeIcons.rectangleAd,
  ),
  'Cookies.Attr.HttpOnly': FeatureData(
    'Cookie Attributes: HttpOnly attribute',
    FontAwesomeIcons.js,
  ),
  'Cookies.Attr.Secure': FeatureData(
    'Cookie Attributes: Secure attribute',
    FontAwesomeIcons.shieldHalved,
  ),
  'Cookies.Attr.Lifetime': FeatureData(
    'Cookie Attributes: Lifetime attribute',
    FontAwesomeIcons.heartPulse,
  ),
  'Cookies.Attr.Strict': FeatureData(
    'Cookie Attributes: Strict attribute',
    FontAwesomeIcons.gavel,
  ),
  'Cookies.Attr.SameSite': FeatureData(
    'Cookie Attributes: SameSite attribute',
    FontAwesomeIcons.objectGroup,
  ),
  'Cookies.Attr.Expires': FeatureData(
    'Cookie Attributes: Expires attribute',
    FontAwesomeIcons.calendarXmark,
  ),
  'Cookies.Attr.Domain': FeatureData(
    'Cookie Attributes: Domain attribute',
    FontAwesomeIcons.hotel,
  ),
  'DBMS.SQLite': FeatureData(
    'Databases: SQLite database',
    FontAwesomeIcons.table,
  ),
  'DBMS.NOSQL': FeatureData(
    'Databases: NOSQL database',
    FontAwesomeIcons.mdb,
  ),
  'DBMS.PostgreSQL': FeatureData(
    'Databases: PostgreSQL Database',
    FontAwesomeIcons.boxArchive,
  ),
  'DBMS.Oracle': FeatureData(
    'Databases: Database ORM',
    FontAwesomeIcons.map,
  ),
  'DBMS.General': FeatureData(
    'Databases: General database',
    FontAwesomeIcons.floppyDisk,
  ),
  '.Build': FeatureData(
    'Development: Build',
    FontAwesomeIcons.building,
  ),
  'Code.Repo': FeatureData(
    'Development: Source Code Repository',
    FontAwesomeIcons.boxArchive,
  ),
  'Code.CI': FeatureData(
    'Development: Continuous integration',
    FontAwesomeIcons.vials,
  ),
  'Framework.Development': FeatureData(
    'Development: Development framework',
    FontAwesomeIcons.dev,
  ),
  'Framework.Testing': FeatureData(
    'Development: Testing framework',
    FontAwesomeIcons.vial,
  ),
  'OpenSourceLicense': FeatureData(
    'Development: Open source',
    FontAwesomeIcons.github,
  ),
  'Framework.CMS': FeatureData(
    'Development: Content management system',
    FontAwesomeIcons.wordpress,
  ),
  'Metadata.Infrastructure': FeatureData(
    'Development: Infrastructure as Code',
    FontAwesomeIcons.dolly,
  ),
  'Permissions.PhoneCalls': FeatureData(
    'Device Permissions: Phone calls',
    FontAwesomeIcons.phone,
  ),
  'Permissions.SMS': FeatureData(
    'Device Permissions: SMS',
    FontAwesomeIcons.comment,
  ),
  'Permissions.Email': FeatureData(
    'Device Permissions: Email',
    FontAwesomeIcons.envelope,
  ),
  'Permissions.CalendarEvents': FeatureData(
    'Device Permissions: Calendar events',
    FontAwesomeIcons.calendarDays,
  ),
  'Permissions.Camera': FeatureData(
    'Device Permissions: Camera',
    FontAwesomeIcons.camera,
  ),
  'Permissions.MediaLibrary': FeatureData(
    'Device Permissions: Media library',
    FontAwesomeIcons.fileAudio,
  ),
  'Permissions.VoiceCommand': FeatureData(
    'Device Permissions: Voice command',
    FontAwesomeIcons.bullhorn,
  ),
  'Permissions.Microphone': FeatureData(
    'Device Permissions: Microphone',
    FontAwesomeIcons.microphone,
  ),
  'Network.Connection': FeatureData(
    'General Features: Network communications',
    FontAwesomeIcons.networkWired,
  ),
  'FileOperation.Read': FeatureData(
    'General Features: File read',
    FontAwesomeIcons.file,
  ),
  'FileOperation.Write': FeatureData(
    'General Features: File write',
    FontAwesomeIcons.penToSquare,
  ),
  'FileOperation.Delete': FeatureData(
    'General Features: File delete',
    FontAwesomeIcons.trash,
  ),
  'Multiprocessing': FeatureData(
    'General Features: Multi-threaded processing',
    FontAwesomeIcons.codeBranch,
  ),
  'Logging': FeatureData(
    'General Features: Logging',
    FontAwesomeIcons.clock,
  ),
  'Data.Parsing.XML': FeatureData(
    'General Features: Processes XML',
    FontAwesomeIcons.fileCode,
  ),
  'Data.Parsing.JSON': FeatureData(
    'General Features: Processes JSON',
    FontAwesomeIcons.fileLines,
  ),
  'Data.Media': FeatureData(
    'Miscellenous: AV media',
    FontAwesomeIcons.circlePlay,
  ),
  'Data.Zipfile': FeatureData(
    'Miscellenous: Zip file processing',
    FontAwesomeIcons.fileZipper,
  ),
  'HTMLForm.Defined': FeatureData(
    'Miscellenous: HTML form',
    FontAwesomeIcons.windowMaximize,
  ),
  'Exception.Caught': FeatureData(
    'Miscellenous: Exception caught',
    FontAwesomeIcons.meteor,
  ),
  'Hardware': FeatureData(
    'Miscellenous: Specialized hardware',
    FontAwesomeIcons.keyboard,
  ),
  'Comment.Fix': FeatureData(
    'Miscellenous: Fix comments',
    FontAwesomeIcons.toolbox,
  ),
  'Comment.Suspicious': FeatureData(
    'Miscellenous: Suspicious comments',
    FontAwesomeIcons.fireFlameSimple,
  ),
  'Metadata.Platform.OS': FeatureData(
    'OS Integration: OS platform',
    FontAwesomeIcons.linux,
  ),
  'Application.Container': FeatureData(
    'OS Integration: App container',
    FontAwesomeIcons.box,
  ),
  'OS.Environment.Read': FeatureData(
    'OS Integration: Environment variable read',
    FontAwesomeIcons.tree,
  ),
  'Process.ListRequest': FeatureData(
    'OS Integration: OS process scan',
    FontAwesomeIcons.binoculars,
  ),
  'OS.SystemRegistry.Read': FeatureData(
    'OS Integration: Windows registry read',
    FontAwesomeIcons.cubes,
  ),
  'Application.Type.Client.Service': FeatureData(
    'OS Integration: Local system service',
    FontAwesomeIcons.doorOpen,
  ),
  'OS.UserAccount.Write': FeatureData(
    'OS System Changes: System user write',
    FontAwesomeIcons.userPlus,
  ),
  'ACL.Write': FeatureData(
    'OS System Changes: Permissions write',
    FontAwesomeIcons.fileSignature,
  ),
  'SystemToken.Write': FeatureData(
    'OS System Changes: System token write',
    FontAwesomeIcons.bandcamp,
  ),
  'OS.Environment.Write': FeatureData(
    'OS System Changes: Environment variable write',
    FontAwesomeIcons.tree,
  ),
  'SystemRegistry.Write': FeatureData(
    'OS System Changes: Windows registry write',
    FontAwesomeIcons.screwdriverWrench,
  ),
  'SystemRegistry.ACL': FeatureData(
    'OS System Changes: Windows registry ACL',
    FontAwesomeIcons.unlock,
  ),
  '.CompilerSettings': FeatureData(
    'Pipeline Tools: Compiler Settings',
    FontAwesomeIcons.listUl,
  ),
  'Packaging.CodeSigning': FeatureData(
    'Pipeline Tools: Code Signing',
    FontAwesomeIcons.signature,
  ),
  '.Linter': FeatureData(
    'Pipeline Tools: Linters',
    FontAwesomeIcons.spellCheck,
  ),
  '.StaticAnalysis': FeatureData(
    'Pipeline Tools: Static Analyzers',
    FontAwesomeIcons.microscope,
  ),
  'Pipeline.Packaging': FeatureData(
    'Pipeline Tools: Packaging',
    FontAwesomeIcons.truckRampBox,
  ),
  'Headers.HSTS': FeatureData(
    'Session Headers: Strict Transport Security (HSTS)',
    FontAwesomeIcons.hand,
  ),
  'Headers.CSP': FeatureData(
    'Session Headers: Content Security Policy (CSP)',
    FontAwesomeIcons.dungeon,
  ),
  'Headers.X-Frame': FeatureData(
    'Session Headers: X-Frame-Options',
    FontAwesomeIcons.crop,
  ),
  'Headers.XSS': FeatureData(
    'Session Headers: Cross Site Scripting (X-XSS)',
    FontAwesomeIcons.xmark,
  ),
  'Headers.HPKP': FeatureData(
    'Session Headers: Public Key Pins (HPKP) Deprecated',
    FontAwesomeIcons.thumbtack,
  ),
  'Headers.Expect-CT': FeatureData(
    'Session Headers: Certificate Transparency (Expect-CT)',
    FontAwesomeIcons.certificate,
  ),
  'Headers.X-Content-Type': FeatureData(
    'Session Headers: X-Content-Type Options',
    FontAwesomeIcons.borderTopLeft,
  ),
  'Headers.Clear-Site-Data': FeatureData(
    'Session Headers: Clear Site Data',
    FontAwesomeIcons.fireFlameCurved,
  ),
  'Sensitive.Identification': FeatureData(
    'Sensitive Data: Personally identifiable data',
    FontAwesomeIcons.addressCard,
  ),
  'Sensitive.Medical': FeatureData(
    'Sensitive Data: Medical data',
    FontAwesomeIcons.stethoscope,
  ),
  'Sensitive.Credentials': FeatureData(
    'Sensitive Data: Credentials',
    FontAwesomeIcons.userSecret,
  ),
  'Sensitive.UserAccount': FeatureData(
    'Sensitive Data: Account or membership',
    FontAwesomeIcons.circleUser,
  ),
  'Sensitive.ProductKey': FeatureData(
    'Sensitive Data: Product key',
    FontAwesomeIcons.compactDisc,
  ),
  'CryptoCurrency': FeatureData(
    'Sensitive Data: Crypto currency',
    FontAwesomeIcons.bitcoin,
  ),
  'Sensitive.Secret': FeatureData(
    'Sensitive Data: Sensitive secret',
    FontAwesomeIcons.keycdn,
  ),
  'Sensitive.Financial': FeatureData(
    'Sensitive Data: Financial data',
    FontAwesomeIcons.moneyBill,
  ),
  'WebApp.Media.Audio': FeatureData(
    'Web App Features: HTML5 Audio',
    FontAwesomeIcons.volumeHigh,
  ),
  'WebApp.Media.GetUserMedia': FeatureData(
    'Web App Features: HTML5 GetUserMedia',
    FontAwesomeIcons.circlePlay,
  ),
  'IndexedDB': FeatureData(
    'Web App Features: HTML5 IndexedDB',
    FontAwesomeIcons.circleDown,
  ),
  'WebApp.Communications.PostMessage': FeatureData(
    'Web App Features: HTML5 PostMessage',
    FontAwesomeIcons.shareFromSquare,
  ),
  'WebApp.Communications.ServerEvent': FeatureData(
    'Web App Features: HTML5 Server Sent Event',
    FontAwesomeIcons.satelliteDish,
  ),
  'WebApp.Storage.FileReader': FeatureData(
    'Web App Features: HTML5 File Reader',
    FontAwesomeIcons.bookOpen,
  ),
  'WebApp.Worker': FeatureData(
    'Web App Features: HTML5 Worker',
    FontAwesomeIcons.peopleCarryBox,
  ),
  'WebApp.Storage.FileUpload': FeatureData(
    'Web App Features: HTML5 File Upload',
    FontAwesomeIcons.fileArrowUp,
  ),
};
