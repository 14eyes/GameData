require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71044 = class("Quest71044", QuestActorProxy)
Quest71044.defaultAlias = "Quest71044"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71044:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71044:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7104401"] = self.OnSubStart7104401,
        ["7104402"] = self.OnSubStart7104402,
        ["7104403"] = self.OnSubStart7104403,
        ["7104404"] = self.OnSubStart7104404,
        ["7104405"] = self.OnSubStart7104405,
        ["7104430"] = self.OnSubStart7104430,
        ["7104406"] = self.OnSubStart7104406,
        ["7104407"] = self.OnSubStart7104407,
        ["7104408"] = self.OnSubStart7104408,
        ["7104425"] = self.OnSubStart7104425,
        ["7104409"] = self.OnSubStart7104409,
        ["7104410"] = self.OnSubStart7104410,
        ["7104411"] = self.OnSubStart7104411,
        ["7104412"] = self.OnSubStart7104412,
        ["7104413"] = self.OnSubStart7104413,
        ["7104414"] = self.OnSubStart7104414,
        ["7104415"] = self.OnSubStart7104415,
        ["7104416"] = self.OnSubStart7104416,
        ["7104417"] = self.OnSubStart7104417,
        ["7104418"] = self.OnSubStart7104418,
        ["7104419"] = self.OnSubStart7104419,
        ["7104431"] = self.OnSubStart7104431,
        ["7104432"] = self.OnSubStart7104432,
        ["7104427"] = self.OnSubStart7104427,
        ["7104420"] = self.OnSubStart7104420,
        ["7104421"] = self.OnSubStart7104421,
        ["7104433"] = self.OnSubStart7104433,
        ["7104422"] = self.OnSubStart7104422,
        ["7104423"] = self.OnSubStart7104423,
        ["7104424"] = self.OnSubStart7104424,
        ["7104426"] = self.OnSubStart7104426,
        ["7104428"] = self.OnSubStart7104428,
        ["7104429"] = self.OnSubStart7104429
    }
end

function Quest71044:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7104401"] = self.OnSubFinish7104401,
        ["7104402"] = self.OnSubFinish7104402,
        ["7104403"] = self.OnSubFinish7104403,
        ["7104404"] = self.OnSubFinish7104404,
        ["7104405"] = self.OnSubFinish7104405,
        ["7104430"] = self.OnSubFinish7104430,
        ["7104406"] = self.OnSubFinish7104406,
        ["7104407"] = self.OnSubFinish7104407,
        ["7104408"] = self.OnSubFinish7104408,
        ["7104425"] = self.OnSubFinish7104425,
        ["7104409"] = self.OnSubFinish7104409,
        ["7104410"] = self.OnSubFinish7104410,
        ["7104411"] = self.OnSubFinish7104411,
        ["7104412"] = self.OnSubFinish7104412,
        ["7104413"] = self.OnSubFinish7104413,
        ["7104414"] = self.OnSubFinish7104414,
        ["7104415"] = self.OnSubFinish7104415,
        ["7104416"] = self.OnSubFinish7104416,
        ["7104417"] = self.OnSubFinish7104417,
        ["7104418"] = self.OnSubFinish7104418,
        ["7104419"] = self.OnSubFinish7104419,
        ["7104431"] = self.OnSubFinish7104431,
        ["7104432"] = self.OnSubFinish7104432,
        ["7104427"] = self.OnSubFinish7104427,
        ["7104420"] = self.OnSubFinish7104420,
        ["7104421"] = self.OnSubFinish7104421,
        ["7104433"] = self.OnSubFinish7104433,
        ["7104422"] = self.OnSubFinish7104422,
        ["7104423"] = self.OnSubFinish7104423,
        ["7104424"] = self.OnSubFinish7104424,
        ["7104426"] = self.OnSubFinish7104426,
        ["7104428"] = self.OnSubFinish7104428,
        ["7104429"] = self.OnSubFinish7104429
    }
end

function Quest71044:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71044:Start()
    print("Start")
end

function Quest71044:OnDestroy()
    print("OnDestroy")
end

function Quest71044:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71044:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71044:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71044:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71044:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71044:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ShowReadingDialog(101666)
    end
end

function Quest71044:OnSubStart7104401(arg1)
    print("OnSubStart7104401")
end

function Quest71044:OnSubFinish7104401(arg1)
    print("OnSubFinish7104401")
end

function Quest71044:OnSubStart7104402(arg1)
    print("OnSubStart7104402")
end

function Quest71044:OnSubFinish7104402(arg1)
    print("OnSubFinish7104402")
end

function Quest71044:OnSubStart7104403(arg1)
    print("OnSubStart7104403")
end

function Quest71044:OnSubFinish7104403(arg1)
    print("OnSubFinish7104403")
end

function Quest71044:OnSubStart7104404(arg1)
    print("OnSubStart7104404")
end

function Quest71044:OnSubFinish7104404(arg1)
    print("OnSubFinish7104404")
end

function Quest71044:OnSubStart7104405(arg1)
    print("OnSubStart7104405")
end

function Quest71044:OnSubFinish7104405(arg1)
    print("OnSubFinish7104405")
end

function Quest71044:OnSubStart7104430(arg1)
    print("OnSubStart7104430")
end

function Quest71044:OnSubFinish7104430(arg1)
    print("OnSubFinish7104430")
end

function Quest71044:OnSubStart7104406(arg1)
    print("OnSubStart7104406")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104406(arg1)
    print("OnSubFinish7104406")
end

function Quest71044:OnSubStart7104407(arg1)
    print("OnSubStart7104407")
end

function Quest71044:OnSubFinish7104407(arg1)
    print("OnSubFinish7104407")
end

function Quest71044:OnSubStart7104408(arg1)
    print("OnSubStart7104408")
end

function Quest71044:OnSubFinish7104408(arg1)
    print("OnSubFinish7104408")
end

function Quest71044:OnSubStart7104425(arg1)
    print("OnSubStart7104425")
end

function Quest71044:OnSubFinish7104425(arg1)
    print("OnSubFinish7104425")
end

function Quest71044:OnSubStart7104409(arg1)
    print("OnSubStart7104409")
end

function Quest71044:OnSubFinish7104409(arg1)
    print("OnSubFinish7104409")
    self:RequestInteraction(npcs.Npc20006Data.alias)
end

function Quest71044:OnSubStart7104410(arg1)
    print("OnSubStart7104410")
end

function Quest71044:OnSubFinish7104410(arg1)
    print("OnSubFinish7104410")
end

function Quest71044:OnSubStart7104411(arg1)
    print("OnSubStart7104411")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7104411", function(arg1)
            actorUtils.FinishQuestID(false, 7104411)
        end, nil, nil, false)
    end)
end

function Quest71044:OnSubFinish7104411(arg1)
    print("OnSubFinish7104411")
end

function Quest71044:OnSubStart7104412(arg1)
    print("OnSubStart7104412")
end

function Quest71044:OnSubFinish7104412(arg1)
    print("OnSubFinish7104412")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
    end, nil, nil, "", false, true)
end

function Quest71044:OnSubStart7104413(arg1)
    print("OnSubStart7104413")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104413(arg1)
    print("OnSubFinish7104413")
end

function Quest71044:OnSubStart7104414(arg1)
    print("OnSubStart7104414")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104414(arg1)
    print("OnSubFinish7104414")
end

function Quest71044:OnSubStart7104415(arg1)
    print("OnSubStart7104415")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7104415", function(arg1)
            actorUtils.FinishQuestID(false, 7104415)
        end, nil, nil, false)
    end)
end

function Quest71044:OnSubFinish7104415(arg1)
    print("OnSubFinish7104415")
end

function Quest71044:OnSubStart7104416(arg1)
    print("OnSubStart7104416")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104416(arg1)
    print("OnSubFinish7104416")
end

function Quest71044:OnSubStart7104417(arg1)
    print("OnSubStart7104417")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7104417", function(arg1)
            actorUtils.FinishQuestID(false, 7104417)
        end, nil, nil, false)
    end)
end

function Quest71044:OnSubFinish7104417(arg1)
    print("OnSubFinish7104417")
end

function Quest71044:OnSubStart7104418(arg1)
    print("OnSubStart7104418")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104418(arg1)
    print("OnSubFinish7104418")
end

function Quest71044:OnSubStart7104419(arg1)
    print("OnSubStart7104419")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7104419", function(arg1)
            actorUtils.FinishQuestID(false, 7104419)
        end, nil, nil, false)
    end)
end

function Quest71044:OnSubFinish7104419(arg1)
    print("OnSubFinish7104419")
end

function Quest71044:OnSubStart7104431(arg1)
    print("OnSubStart7104431")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104431(arg1)
    print("OnSubFinish7104431")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.PaimonReminder7104414, nil, "")
    end)
end

function Quest71044:OnSubStart7104432(arg1)
    print("OnSubStart7104432")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104432(arg1)
    print("OnSubFinish7104432")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.PaimonReminder7104416, nil, "")
    end)
end

function Quest71044:OnSubStart7104427(arg1)
    print("OnSubStart7104427")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104427(arg1)
    print("OnSubFinish7104427")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTask(datas.PaimonReminder7104413, nil, "")
    end)
end

function Quest71044:OnSubStart7104420(arg1)
    print("OnSubStart7104420")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104420(arg1)
    print("OnSubFinish7104420")
end

function Quest71044:OnSubStart7104421(arg1)
    print("OnSubStart7104421")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
end

function Quest71044:OnSubFinish7104421(arg1)
    print("OnSubFinish7104421")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20006Data.alias)
end

function Quest71044:OnSubStart7104433(arg1)
    print("OnSubStart7104433")
end

function Quest71044:OnSubFinish7104433(arg1)
    print("OnSubFinish7104433")
end

function Quest71044:OnSubStart7104422(arg1)
    print("OnSubStart7104422")
end

function Quest71044:OnSubFinish7104422(arg1)
    print("OnSubFinish7104422")
end

function Quest71044:OnSubStart7104423(arg1)
    print("OnSubStart7104423")
end

function Quest71044:OnSubFinish7104423(arg1)
    print("OnSubFinish7104423")
end

function Quest71044:OnSubStart7104424(arg1)
    print("OnSubStart7104424")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7104424", function(arg1)
            actorUtils.FinishQuestID(false, 7104424)
        end, nil, nil, false)
    end)
end

function Quest71044:OnSubFinish7104424(arg1)
    print("OnSubFinish7104424")
end

function Quest71044:OnSubStart7104426(arg1)
    print("OnSubStart7104426")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
    self:TransmitPlayerById(arg1, 1)
end

function Quest71044:OnSubFinish7104426(arg1)
    print("OnSubFinish7104426")
end

function Quest71044:OnSubStart7104428(arg1)
    print("OnSubStart7104428")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 6, function(arg1)
        actorUtils.FinishQuestID(false, 7104428)
    end)
end

function Quest71044:OnSubFinish7104428(arg1)
    print("OnSubFinish7104428")
end

function Quest71044:OnSubStart7104429(arg1)
    print("OnSubStart7104429")
    self:CreateQuestNpc(arg1, npcs.Npc20006Data.id, 1)
    self:RequestInteraction(npcs.Npc20006Data.alias)
end

function Quest71044:OnSubFinish7104429(arg1)
    print("OnSubFinish7104429")
    self:NpcDestroy(npcs.Npc20006Data.alias, 3)
end

return Quest71044
