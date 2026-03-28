class ApiKeys {
  static const String supabaseUrl = 'https://yoirmlsqtstivmmlwyko.supabase.co';
  static const String supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlvaXJtbHNxdHN0aXZtbWx3eWtvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQ3MjQyMDcsImV4cCI6MjA5MDMwMDIwN30.-djCMW8Z7zz19oIDgn4BlsxpITUpsGtTReQlaVivQdw';
  static const String geminiApiKey = 'AIzaSyBiE-BReEm0klKh7eQMdluZ2vynfGtfLWA';
  static const String exerciseDbApiKey = '58f5b2be97msh58d451fcb0f3dd3p1c8734jsn66ed0253e3c0';

  static bool get hasSupabaseKeys =>
      supabaseUrl.isNotEmpty && supabaseAnonKey.isNotEmpty;

  static bool get hasGeminiKey => geminiApiKey.isNotEmpty;

  static bool get hasAllKeys => hasSupabaseKeys && hasGeminiKey;
}
