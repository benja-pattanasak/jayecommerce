class Exception {
  static String getErrorMessage(
      {required int statusCode, String errorMessage = ""}) {
    switch (statusCode) {
      case 100:
        return "Continue - เซิร์ฟเวอร์ได้รับคำขอแล้ว และสามารถดำเนินการต่อได้";
      case 101:
        return "Switching Protocols - กำลังเปลี่ยนโปรโตคอลตามที่ร้องขอ";
      case 102:
        return "Processing - คำขอกำลังดำเนินการ แต่ยังไม่เสร็จ";
      case 200:
        return "OK - คำขอสำเร็จ และส่งข้อมูลที่ร้องขอ";
      case 201:
        return "Created - มีการสร้างทรัพยากรใหม่แล้ว";
      case 202:
        return "Accepted - คำขอได้รับแล้ว แต่ยังไม่ประมวลผลเสร็จ";
      case 204:
        return "No Content - สำเร็จแต่ไม่มีข้อมูลส่งกลับ";
      case 301:
        return "Moved Permanently - ย้ายไปที่ใหม่ถาวร";
      case 302:
        return "Found (Moved Temporarily) - ย้ายชั่วคราว";
      case 304:
        return "Not Modified - ไฟล์ยังไม่เปลี่ยนแปลง ไม่ต้องดาวน์โหลดใหม่";
      case 307:
        return "Temporary Redirect - เปลี่ยนเส้นทางชั่วคราว (คงใช้ HTTP method เดิม)";
      case 400:
        return "Bad Request - คำขอไม่ถูกต้อง";
      case 401:
        return "Unauthorized - ต้องยืนยันตัวตนก่อน";
      case 403:
        return "Forbidden - ถูกห้ามเข้าถึง";
      case 404:
        return "Not Found - ไม่พบทรัพยากรที่ร้องขอ";
      case 405:
        return "Method Not Allowed - ใช้วิธี HTTP ผิด (เช่น ใช้ POST กับ API ที่รองรับแค่ GET)";
      case 408:
        return "Request Timeout - คำขอใช้เวลานานเกินไป";
      case 500:
        return "Internal Server Error - เซิร์ฟเวอร์มีข้อผิดพลาดทั่วไป";
      case 502:
        return "Bad Gateway - เกตเวย์ได้รับการตอบกลับผิดพลาดจากเซิร์ฟเวอร์ต้นทาง";
      case 503:
        return "Service Unavailable – เซิร์ฟเวอร์ไม่พร้อมให้บริการ (อาจเกิดจากโหลดสูง)";
      case 504:
        return "Gateway Timeout – เกตเวย์รอเซิร์ฟเวอร์ต้นทางตอบกลับนานเกินไป";
      case 1000:
        return errorMessage;
      case 2000:
        return "ยังไม่มีข้อมูล";
      default:
        return "";
    }
  }
}
