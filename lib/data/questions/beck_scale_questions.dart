import 'package:phanboichau_app/data/classes/question.dart';

class BeckScaleQuestions {
  List<Question> get content => _questionData;
  int get size => _questionData.length;

  final List<Question> _questionData = [
    Question(
      question: 'Câu hỏi số 1',
      answers: [
        'Tôi không cảm thấy buồn.',
        'Nhiều lúc tôi cảm thấy buồn.',
        'Lúc nào tôi cũng cảm thấy buồn và không dứt ra được.',
        'Tôi buồn và bất hạnh đến mức không thể chịu được.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 2',
      answers: [
        'Tôi không nản lòng về tương lai.',
        'Tôi cảm thấy nản lòng về tương lai hơn trước',
        'Tôi cảm thấy mình chẳng có gì mong đợi ở tương lai cả',
        'Tôi cảm thấy tương lai tuyệt vọng và tình hình chỉ có thể tiếp tục xấu đi',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 3',
      answers: [
        'Tôi không cảm thấy như bị thất bại',
        'Tôi thấy mình thất bại nhiều hơn những người khác',
        'Nhìn lại cuộc đời, tôi thấy mình đã có quá nhiều thất bại',
        'Tôi cảm thấy mình là một người hoàn toàn thất bại (trong quan hệ với cha mẹ, với bạn bè, thầy cô, …)',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 4',
      answers: [
        'Tôi chẳng có điều gì đặc biệt phải phàn nàn.',
        'Tôi ít thấy thích những điều mà trước đây tôi vẫn thường ưa thích.',
        'Tôi chẳng còn chút hài long nào cho dù là việc gì đi chăng nữa.',
        'Tôi bất bình và không hài long với tất cả.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 5',
      answers: [
        'Tôi hoàn toàn không cảm thấy có tội lỗi gì ghê gớm cả.',
        'Phần nhiều những việc tôi đã làm tôi đều cảm thấy có tội.',
        'Phần lớn thời gian tôi cảm thấy mình có tội.',
        'Lúc nào tôi cũng cảm thấy mình có tội.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 6',
      answers: [
        'Tôi không cảm thấy đang bị trừng phạt.',
        'Tôi cảm thấy có lẽ mình đang bị trừng phạt.',
        'Tôi mong chờ bị trừng phạt.',
        'Tôi cảm thấy mình đang bị trừng phạt.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 7',
      answers: [
        'Tôi không thấy thất vọng với bản thân.',
        'Tôi thấy thất vọng với bản thân.',
        'Tôi ghê tởm bản thân.',
        'Tôi căm ghét bản thân.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 8',
      answers: [
        'Tôi không phê phán hoặc đổ lỗi cho bản thân hơn trước kia.',
        'Tôi phê phán bản thân mình nhiều hơn trước kia.',
        'Tôi phê phán bản thân về tất cả những lỗi lầm của mình.',
        'Tôi đổ lỗi cho bản thân về tất cả mọi điều tồi tệ xảy ra.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 9',
      answers: [
        'Tôi không có ý nghĩ tự tử.',
        'Tôi có ý nghĩ tự tử nhưng không thực hiện.',
        'Tôi có kế hoạch chính xác để tự tử.',
        'Nếu có cơ hội tôi sẽ tự tử.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 10',
      answers: [
        'Tôi không khóc nhiều hơn trước kia.',
        'Tôi hay khóc nhiều hơn trước.',
        'Tôi thường khóc vì những điều nhỏ nhặt.',
        'Tôi thấy muốn khóc nhưng không thể khóc được.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 11',
      answers: [
        'Tôi không dễ bồn chồn và căng thẳng hơn thường lệ.',
        'Tôi cảm thấy dễ bồn chồn và căng thẳng hơn thường lệ.',
        'Tôi cảm thấy bồn chồn và căng thẳng đến mức khó có thể ngồi yên được.',
        'Tôi thấy rất bồn chồn và kích động đến mức phải đi lại liên tục hoặc làm việc gì đó.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 12',
      answers: [
        'Tôi không mất sự quan tâm đến những người xung quanh hoặc các hoạt động khác.',
        'Tôi ít quan tâm đến mọi người, mọi việc xung quanh hơn trước.',
        'Tôi mất hầu hết sự quan tâm đến mọi người, mọi việc xung quanh.',
        'Tôi không còn quan tâm đến bất kỳ điều gì nữa.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 13',
      answers: [
        'Tôi quyết định mọi việc cũng tốt như trước.',
        'Tôi thấy khó quyết định mọi việc hơn trước.',
        'Tôi thấy khó quyết định mọi việc hơn trước rất nhiều.',
        'Tôi chẳng còn có thể quyết định được việc gì nữa.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 14',
      answers: [
        'Tôi không cảm thấy mình là người vô dụng.',
        'Tôi không cho rằng mình có giá trị và có ích như trước kia.',
        'Tôi cảm thấy mình vô dụng hơn so với những người xung quanh.',
        'Tôi thấy mình là người hoàn toàn vô dụng.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 15',
      answers: [
        'Tôi thấy mình vẫn tràn đầy sức lực như trước đây.',
        'Sức lực của tôi kém hơn trước.',
        'Tôi không đủ sức lực để làm được nhiều việc nữa.',
        'Tôi không thể làm được bất cứ việc gì nữa.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 16',
      answers: [
        'Không thấy có chút thay đổi gì trong giấc ngủ của tôi.',
        'Tôi ngủ hơi nhiều hơn trước.',
        'Tôi ngủ hơi ít hơn trước.',
        'Tôi ngủ nhiều hơn trước.',
        'Tôi ngủ ít hơn trước.',
        'Tôi ngủ hầu như suốt cả ngày.',
        'Tôi thức dậy 1-2 giờ sớm hơn trước và không thể ngủ lại được.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 1, 2, 2, 3, 3],
    ),
    Question(
      question: 'Câu hỏi số 17',
      answers: [
        'Tôi không dễ cáu kỉnh và bực bội hơn trước.',
        'Tôi dễ cáu kỉnh và bực bội hơn trước.',
        'Tôi dễ cáu kỉnh và bực bội hơn trước rất nhiều.',
        'Tôi không còn cáu kỉnh bực bội với bất cứ điều gì',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 18',
      answers: [
        'Tôi ăn vẫn ngon miệng như trước.',
        'Tôi ăn kém ngon miệng hơn trước.',
        'Tôi ăn ngon miệng hơn trước.',
        'Tôi ăn kém ngon miệng hơn trước rất nhiều.',
        'Tôi ăn ngon miệng hơn trước rất nhiều.',
        'Tôi không thấy ngon miệng một chút nào cả.',
        'Lúc nào tôi cũng thấy thèm ăn.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 1, 2, 2, 3, 3],
    ),
    Question(
      question: 'Câu hỏi số 19',
      answers: [
        'Tôi có thể tập trung chú ý tốt như trước.',
        'Tôi không thể tập trung chú ý được như trước.',
        'Tôi thấy khó tập trung chú ý lâu được vào bất kỳ điều gì.',
        'Tôi thấy mình không thể tập trung chú ý được vào bất kỳ điều gì nữa.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 20',
      answers: [
        'Tôi không mệt mỏi hơn trước.',
        'Tôi dễ mệt mỏi hơn trước.',
        'Hầu như làm bất kỳ việc gì tôi cũng thấy mệt mỏi.',
        'Tôi quá mệt mỏi khi làm bất kỳ việc gì.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
    Question(
      question: 'Câu hỏi số 21',
      answers: [
        'Tôi vẫn giao tiếp với mọi người bình thường.',
        'Tôi ít hứng thú trong giao tiếp.',
        'Tôi hoàn toàn mất hứng thú khi giao tiếp.',
        'Tôi không muốn gặp gỡ mọi người.',
      ],
      multipleCorrectAnswers: true,
      answersPoints: [0, 1, 2, 3],
    ),
  ];
}
