require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74104 = class("Quest74104", QuestActorProxy)
Quest74104.defaultAlias = "Quest74104"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74104:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74104:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7410401"] = self.OnSubStart7410401,
        ["7410402"] = self.OnSubStart7410402,
        ["7410403"] = self.OnSubStart7410403,
        ["7410404"] = self.OnSubStart7410404,
        ["7410405"] = self.OnSubStart7410405,
        ["7410406"] = self.OnSubStart7410406,
        ["7410431"] = self.OnSubStart7410431,
        ["7410407"] = self.OnSubStart7410407,
        ["7410408"] = self.OnSubStart7410408,
        ["7410409"] = self.OnSubStart7410409,
        ["7410410"] = self.OnSubStart7410410,
        ["7410411"] = self.OnSubStart7410411,
        ["7410412"] = self.OnSubStart7410412,
        ["7410435"] = self.OnSubStart7410435,
        ["7410436"] = self.OnSubStart7410436,
        ["7410413"] = self.OnSubStart7410413,
        ["7410414"] = self.OnSubStart7410414,
        ["7410415"] = self.OnSubStart7410415,
        ["7410416"] = self.OnSubStart7410416,
        ["7410417"] = self.OnSubStart7410417,
        ["7410418"] = self.OnSubStart7410418,
        ["7410438"] = self.OnSubStart7410438,
        ["7410419"] = self.OnSubStart7410419,
        ["7410420"] = self.OnSubStart7410420,
        ["7410421"] = self.OnSubStart7410421,
        ["7410422"] = self.OnSubStart7410422,
        ["7410446"] = self.OnSubStart7410446,
        ["7410439"] = self.OnSubStart7410439,
        ["7410432"] = self.OnSubStart7410432,
        ["7410433"] = self.OnSubStart7410433,
        ["7410423"] = self.OnSubStart7410423,
        ["7410437"] = self.OnSubStart7410437,
        ["7410424"] = self.OnSubStart7410424,
        ["7410425"] = self.OnSubStart7410425,
        ["7410426"] = self.OnSubStart7410426,
        ["7410430"] = self.OnSubStart7410430,
        ["7410427"] = self.OnSubStart7410427,
        ["7410428"] = self.OnSubStart7410428,
        ["7410440"] = self.OnSubStart7410440,
        ["7410441"] = self.OnSubStart7410441,
        ["7410442"] = self.OnSubStart7410442,
        ["7410443"] = self.OnSubStart7410443,
        ["7410444"] = self.OnSubStart7410444,
        ["7410445"] = self.OnSubStart7410445
    }
end

function Quest74104:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7410401"] = self.OnSubFinish7410401,
        ["7410402"] = self.OnSubFinish7410402,
        ["7410403"] = self.OnSubFinish7410403,
        ["7410404"] = self.OnSubFinish7410404,
        ["7410405"] = self.OnSubFinish7410405,
        ["7410406"] = self.OnSubFinish7410406,
        ["7410431"] = self.OnSubFinish7410431,
        ["7410407"] = self.OnSubFinish7410407,
        ["7410408"] = self.OnSubFinish7410408,
        ["7410409"] = self.OnSubFinish7410409,
        ["7410410"] = self.OnSubFinish7410410,
        ["7410411"] = self.OnSubFinish7410411,
        ["7410412"] = self.OnSubFinish7410412,
        ["7410435"] = self.OnSubFinish7410435,
        ["7410436"] = self.OnSubFinish7410436,
        ["7410413"] = self.OnSubFinish7410413,
        ["7410414"] = self.OnSubFinish7410414,
        ["7410415"] = self.OnSubFinish7410415,
        ["7410416"] = self.OnSubFinish7410416,
        ["7410417"] = self.OnSubFinish7410417,
        ["7410418"] = self.OnSubFinish7410418,
        ["7410438"] = self.OnSubFinish7410438,
        ["7410419"] = self.OnSubFinish7410419,
        ["7410420"] = self.OnSubFinish7410420,
        ["7410421"] = self.OnSubFinish7410421,
        ["7410422"] = self.OnSubFinish7410422,
        ["7410446"] = self.OnSubFinish7410446,
        ["7410439"] = self.OnSubFinish7410439,
        ["7410432"] = self.OnSubFinish7410432,
        ["7410433"] = self.OnSubFinish7410433,
        ["7410423"] = self.OnSubFinish7410423,
        ["7410437"] = self.OnSubFinish7410437,
        ["7410424"] = self.OnSubFinish7410424,
        ["7410425"] = self.OnSubFinish7410425,
        ["7410426"] = self.OnSubFinish7410426,
        ["7410430"] = self.OnSubFinish7410430,
        ["7410427"] = self.OnSubFinish7410427,
        ["7410428"] = self.OnSubFinish7410428,
        ["7410440"] = self.OnSubFinish7410440,
        ["7410441"] = self.OnSubFinish7410441,
        ["7410442"] = self.OnSubFinish7410442,
        ["7410443"] = self.OnSubFinish7410443,
        ["7410444"] = self.OnSubFinish7410444,
        ["7410445"] = self.OnSubFinish7410445
    }
end

function Quest74104:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74104:Start()
    print("Start")
end

function Quest74104:OnDestroy()
    print("OnDestroy")
end

function Quest74104:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74104:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74104:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74104:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74104:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74104:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7410440)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7410441)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7410442)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 7410443)
    elseif arg1 == 5 then
        actorUtils.FinishQuestID(false, 7410444)
    elseif arg1 == 6 then
        actorUtils.FinishQuestID(false, 7410445)
    end
end

function Quest74104:OnSubStart7410401(arg1)
    print("OnSubStart7410401")
    this:CreateQuestNpc(arg1, npcs.Npc21137Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5225Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q74104Trigger", "Actor/Gadget/Q74104Trigger", 70900002, 0, {x = 4987.761, y = 488.137, z = 4490.928}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74104:OnSubFinish7410401(arg1)
    print("OnSubFinish7410401")
end

function Quest74104:OnSubStart7410402(arg1)
    print("OnSubStart7410402")
    actorMgr:CreateActorWithPos("Q74104Trigger1", "Actor/Gadget/Q74104Trigger1", 70900002, 0, {x = 4994.15, y = 411.456, z = 4411.46}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74104:OnSubFinish7410402(arg1)
    print("OnSubFinish7410402")
end

function Quest74104:OnSubStart7410403(arg1)
    print("OnSubStart7410403")
    actorMgr:CreateActorWithPos("Q74104Trigger2", "Actor/Gadget/Q74104Trigger2", 70900002, 0, {x = 4945.353, y = 368.695, z = 4463.376}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74104:OnSubFinish7410403(arg1)
    print("OnSubFinish7410403")
end

function Quest74104:OnSubStart7410404(arg1)
    print("OnSubStart7410404")
end

function Quest74104:OnSubFinish7410404(arg1)
    print("OnSubFinish7410404")
end

function Quest74104:OnSubStart7410405(arg1)
    print("OnSubStart7410405")
end

function Quest74104:OnSubFinish7410405(arg1)
    print("OnSubFinish7410405")
end

function Quest74104:OnSubStart7410406(arg1)
    print("OnSubStart7410406")
    this:RequestInteraction(npcs.Npc21137Data.alias, "", true)
end

function Quest74104:OnSubFinish7410406(arg1)
    print("OnSubFinish7410406")
end

function Quest74104:OnSubStart7410431(arg1)
    print("OnSubStart7410431")
end

function Quest74104:OnSubFinish7410431(arg1)
    print("OnSubFinish7410431")
end

function Quest74104:OnSubStart7410407(arg1)
    print("OnSubStart7410407")
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0, false, 0)
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest74104:OnSubFinish7410407(arg1)
    print("OnSubFinish7410407")
end

function Quest74104:OnSubStart7410408(arg1)
    print("OnSubStart7410408")
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest74104:OnSubFinish7410408(arg1)
    print("OnSubFinish7410408")
    this:SafeDestroyQuestNpc(npcs.Npc21137Data.alias, 3)
end

function Quest74104:OnSubStart7410409(arg1)
    print("OnSubStart7410409")
end

function Quest74104:OnSubFinish7410409(arg1)
    print("OnSubFinish7410409")
end

function Quest74104:OnSubStart7410410(arg1)
    print("OnSubStart7410410")
    actorMgr:CreateActorWithPos("Q74104Trigger3", "Actor/Gadget/Q74104Trigger3", 70900002, 0, {x = 4981.62, y = 359.948, z = 4511.272}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q74104Trigger5", "Actor/Gadget/Q74104Trigger5", 70900002, 0, {x = 4936.51, y = 362.847, z = 4505.334}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest74104:OnSubFinish7410410(arg1)
    print("OnSubFinish7410410")
end

function Quest74104:OnSubStart7410411(arg1)
    print("OnSubStart7410411")
    this:PlayCutsceneIndex(7410411, function(arg1)
        actorUtils.FinishQuestID(false, 7410411)
    end, nil, nil, false)
end

function Quest74104:OnSubFinish7410411(arg1)
    print("OnSubFinish7410411")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_06, nil, 74104)
end

function Quest74104:OnSubStart7410412(arg1)
    print("OnSubStart7410412")
end

function Quest74104:OnSubFinish7410412(arg1)
    print("OnSubFinish7410412")
end

function Quest74104:OnSubStart7410435(arg1)
    print("OnSubStart7410435")
end

function Quest74104:OnSubFinish7410435(arg1)
    print("OnSubFinish7410435")
end

function Quest74104:OnSubStart7410436(arg1)
    print("OnSubStart7410436")
end

function Quest74104:OnSubFinish7410436(arg1)
    print("OnSubFinish7410436")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_03, nil, 74104)
end

function Quest74104:OnSubStart7410413(arg1)
    print("OnSubStart7410413")
end

function Quest74104:OnSubFinish7410413(arg1)
    print("OnSubFinish7410413")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_07, nil, 74104)
end

function Quest74104:OnSubStart7410414(arg1)
    print("OnSubStart7410414")
end

function Quest74104:OnSubFinish7410414(arg1)
    print("OnSubFinish7410414")
end

function Quest74104:OnSubStart7410415(arg1)
    print("OnSubStart7410415")
    actorMgr:CreateActorWithPos("Q74104Trigger4", "Actor/Gadget/Q74104Trigger4", 70900002, 0, {x = 4989.26, y = 259.271, z = 4564.015}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74104:OnSubFinish7410415(arg1)
    print("OnSubFinish7410415")
end

function Quest74104:OnSubStart7410416(arg1)
    print("OnSubStart7410416")
    actorMgr:CreateActorWithPos("Q74104Trigger9", "Actor/Gadget/Q74104Trigger9", 70900002, 0, {x = 4941.508, y = 256.872, z = 4539.847}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74104:OnSubFinish7410416(arg1)
    print("OnSubFinish7410416")
end

function Quest74104:OnSubStart7410417(arg1)
    print("OnSubStart7410417")
end

function Quest74104:OnSubFinish7410417(arg1)
    print("OnSubFinish7410417")
end

function Quest74104:OnSubStart7410418(arg1)
    print("OnSubStart7410418")
end

function Quest74104:OnSubFinish7410418(arg1)
    print("OnSubFinish7410418")
    this:NarratorOnlyTaskByData(datas.Finish_18)
end

function Quest74104:OnSubStart7410438(arg1)
    print("OnSubStart7410438")
    this:PlayCutsceneIndex(7410438, function(arg1)
        actorUtils.FinishQuestID(false, 7410438)
        actorUtils.FinishQuestID(false, 7410418)
    end, nil, nil, false)
end

function Quest74104:OnSubFinish7410438(arg1)
    print("OnSubFinish7410438")
end

function Quest74104:OnSubStart7410419(arg1)
    print("OnSubStart7410419")
    actorMgr:CreateActorWithPos("Q74104Trigger6", "Actor/Gadget/Q74104Trigger6", 70900002, 0, {x = 4834.177, y = 289.411, z = 4516.773}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q74104Trigger10", "Actor/Gadget/Q74104Trigger10", 70900002, 0, {x = 4880.535, y = 291.4, z = 4543.291}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74104:OnSubFinish7410419(arg1)
    print("OnSubFinish7410419")
end

function Quest74104:OnSubStart7410420(arg1)
    print("OnSubStart7410420")
    this:PlayCutsceneIndex(7410420, function(arg1)
        actorUtils.FinishQuestID(false, 7410420)
    end, nil, nil, false)
end

function Quest74104:OnSubFinish7410420(arg1)
    print("OnSubFinish7410420")
end

function Quest74104:OnSubStart7410421(arg1)
    print("OnSubStart7410421")
end

function Quest74104:OnSubFinish7410421(arg1)
    print("OnSubFinish7410421")
end

function Quest74104:OnSubStart7410422(arg1)
    print("OnSubStart7410422")
end

function Quest74104:OnSubFinish7410422(arg1)
    print("OnSubFinish7410422")
end

function Quest74104:OnSubStart7410446(arg1)
    print("OnSubStart7410446")
    actorMgr:CreateActorWithPos("Q74104Trigger13", "Actor/Gadget/Q74104Trigger13", 70900002, 0, points.TPos_Q74104Trigger13.pos, points.TPos_Q74104Trigger13.rot, true, false, 3)
end

function Quest74104:OnSubFinish7410446(arg1)
    print("OnSubFinish7410446")
end

function Quest74104:OnSubStart7410439(arg1)
    print("OnSubStart7410439")
    this:PlayCutsceneIndex(7410439, function(arg1)
        actorUtils.FinishQuestID(false, 7410439)
    end, nil, nil, false)
end

function Quest74104:OnSubFinish7410439(arg1)
    print("OnSubFinish7410439")
end

function Quest74104:OnSubStart7410432(arg1)
    print("OnSubStart7410432")
end

function Quest74104:OnSubFinish7410432(arg1)
    print("OnSubFinish7410432")
end

function Quest74104:OnSubStart7410433(arg1)
    print("OnSubStart7410433")
end

function Quest74104:OnSubFinish7410433(arg1)
    print("OnSubFinish7410433")
end

function Quest74104:OnSubStart7410423(arg1)
    print("OnSubStart7410423")
end

function Quest74104:OnSubFinish7410423(arg1)
    print("OnSubFinish7410423")
end

function Quest74104:OnSubStart7410437(arg1)
    print("OnSubStart7410437")
    this:CreateQuestNpc(arg1, npcs.Npc21137Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q74104Trigger12", "Actor/Gadget/Q74104Trigger12", 70900002, 0, {x = 4873.256, y = 376.546, z = 4419.793}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74104:OnSubFinish7410437(arg1)
    print("OnSubFinish7410437")
end

function Quest74104:OnSubStart7410424(arg1)
    print("OnSubStart7410424")
    this:CreateQuestNpc(arg1, npcs.Npc5225Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q74104Trigger7", "Actor/Gadget/Q74104Trigger7", 70900002, 0, points.TPos_Q74104Trigger7.pos, points.TPos_Q74104Trigger7.rot, true, false, 3)
end

function Quest74104:OnSubFinish7410424(arg1)
    print("OnSubFinish7410424")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_14)
end

function Quest74104:OnSubStart7410425(arg1)
    print("OnSubStart7410425")
    actorMgr:CreateActorWithPos("Q74104Trigger11", "Actor/Gadget/Q74104Trigger11", 70900002, 0, {x = 4923.216, y = 376.801, z = 4415.789}, {x = 0.0, y = 27.933, z = 0.0}, true, false, 3)
end

function Quest74104:OnSubFinish7410425(arg1)
    print("OnSubFinish7410425")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21137Data.alias)
end

function Quest74104:OnSubStart7410426(arg1)
    print("OnSubStart7410426")
    this:CreateQuestNpc(arg1, npcs.Npc5225Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc5225Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest74104:OnSubFinish7410426(arg1)
    print("OnSubFinish7410426")
end

function Quest74104:OnSubStart7410430(arg1)
    print("OnSubStart7410430")
end

function Quest74104:OnSubFinish7410430(arg1)
    print("OnSubFinish7410430")
end

function Quest74104:OnSubStart7410427(arg1)
    print("OnSubStart7410427")
    actorMgr:CreateActorWithPos("Q74104Trigger8", "Actor/Gadget/Q74104Trigger8", 70900002, 0, points.TPos_Q74104Trigger8.pos, points.TPos_Q74104Trigger8.rot, true, false, 3)
end

function Quest74104:OnSubFinish7410427(arg1)
    print("OnSubFinish7410427")
end

function Quest74104:OnSubStart7410428(arg1)
    print("OnSubStart7410428")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21137Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21137Data.alias):DoFreeStyle(8040, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5225Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc5225Data.alias, npcs.Npc5225Data.alias, true)
end

function Quest74104:OnSubFinish7410428(arg1)
    print("OnSubFinish7410428")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21137Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5225Data.alias)
end

function Quest74104:OnSubStart7410440(arg1)
    print("OnSubStart7410440")
end

function Quest74104:OnSubFinish7410440(arg1)
    print("OnSubFinish7410440")
end

function Quest74104:OnSubStart7410441(arg1)
    print("OnSubStart7410441")
end

function Quest74104:OnSubFinish7410441(arg1)
    print("OnSubFinish7410441")
end

function Quest74104:OnSubStart7410442(arg1)
    print("OnSubStart7410442")
end

function Quest74104:OnSubFinish7410442(arg1)
    print("OnSubFinish7410442")
end

function Quest74104:OnSubStart7410443(arg1)
    print("OnSubStart7410443")
end

function Quest74104:OnSubFinish7410443(arg1)
    print("OnSubFinish7410443")
end

function Quest74104:OnSubStart7410444(arg1)
    print("OnSubStart7410444")
end

function Quest74104:OnSubFinish7410444(arg1)
    print("OnSubFinish7410444")
end

function Quest74104:OnSubStart7410445(arg1)
    print("OnSubStart7410445")
end

function Quest74104:OnSubFinish7410445(arg1)
    print("OnSubFinish7410445")
end

return Quest74104
