require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10120 = class("Quest10120", QuestActorProxy)
Quest10120.defaultAlias = "Quest10120"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest10120:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest10120:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1012001"] = self.OnSubStart1012001,
        ["1012002"] = self.OnSubStart1012002,
        ["1012003"] = self.OnSubStart1012003,
        ["1012004"] = self.OnSubStart1012004,
        ["1012005"] = self.OnSubStart1012005,
        ["1012006"] = self.OnSubStart1012006,
        ["1012007"] = self.OnSubStart1012007,
        ["1012008"] = self.OnSubStart1012008,
        ["1012009"] = self.OnSubStart1012009
    }
end

function Quest10120:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1012001"] = self.OnSubFinish1012001,
        ["1012002"] = self.OnSubFinish1012002,
        ["1012003"] = self.OnSubFinish1012003,
        ["1012004"] = self.OnSubFinish1012004,
        ["1012005"] = self.OnSubFinish1012005,
        ["1012006"] = self.OnSubFinish1012006,
        ["1012007"] = self.OnSubFinish1012007,
        ["1012008"] = self.OnSubFinish1012008,
        ["1012009"] = self.OnSubFinish1012009
    }
end

function Quest10120:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1012001"] = self.OnSubFailed1012001,
        ["1012002"] = self.OnSubFailed1012002,
        ["1012003"] = self.OnSubFailed1012003,
        ["1012004"] = self.OnSubFailed1012004,
        ["1012005"] = self.OnSubFailed1012005,
        ["1012006"] = self.OnSubFailed1012006,
        ["1012007"] = self.OnSubFailed1012007,
        ["1012008"] = self.OnSubFailed1012008,
        ["1012009"] = self.OnSubFailed1012009
    }
end

function Quest10120:Start()
    print("Start")
end

function Quest10120:OnDestroy()
    print("OnDestroy")
end

function Quest10120:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10120:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10120:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10120:OnSubStart1012001(arg1)
    print("OnSubStart1012001")
    this:CreateQuestNpc(arg1, npcs.QinData.id, 1)
    this:GetQuestNpcActor(npcs.QinData.alias):DoFreeStyle(1120, true, 0, true, true)
    actorMgr:CreateActorWithPos("Q10120Trigger", "Actor/Gadget/Q10120Trigger", 70900002, 0, {x = 17.014, y = 0.53, z = 10.264}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1004)
    actorUtils.FinishQuestID(false, 1020302)
end

function Quest10120:OnSubFinish1012001(arg1)
    print("OnSubFinish1012001")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest10120:OnSubFailed1012001(arg1)
    print("OnSubFailed1012001")
end

function Quest10120:OnSubStart1012002(arg1)
    print("OnSubStart1012002")
    this:GetQuestNpcActor(npcs.QinData.alias):DoFreeStyle(1120, true, 0, true, true)
    this:CreateQuestNpc(arg1, npcs.Npc10423Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc10423Data.alias):DoFreeStyle(1120, true, nil, true, true)
    this:CreateQuestNpc(arg1, npcs.Npc1421Data.id, 0)
end

function Quest10120:OnSubFinish1012002(arg1)
    print("OnSubFinish1012002")
    this:SafeDestroyQuestNpc(npcs.QinData.alias, 1004)
end

function Quest10120:OnSubFailed1012002(arg1)
    print("OnSubFailed1012002")
end

function Quest10120:OnSubStart1012003(arg1)
    print("OnSubStart1012003")
end

function Quest10120:OnSubFinish1012003(arg1)
    print("OnSubFinish1012003")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.PaimonKaiche, nil, 10120)
        this:DestroyQuestNpcActor(npcs.Npc10423Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1421Data.alias, 3)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        this:DestroyQuestNpcActor(npcs.Npc10386Data.alias, 3)
    end)
end

function Quest10120:OnSubFailed1012003(arg1)
    print("OnSubFailed1012003")
end

function Quest10120:OnSubStart1012004(arg1)
    print("OnSubStart1012004")
end

function Quest10120:OnSubFinish1012004(arg1)
    print("OnSubFinish1012004")
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
        this:RequestInteraction(npcs.AmborData.alias)
    end, nil, nil, "")
end

function Quest10120:OnSubFailed1012004(arg1)
    print("OnSubFailed1012004")
end

function Quest10120:OnSubStart1012005(arg1)
    print("OnSubStart1012005")
end

function Quest10120:OnSubFinish1012005(arg1)
    print("OnSubFinish1012005")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.AmborData.alias, 3)
        this:NarratorOnlyTaskByData(datas.Kaiche3, nil, 10120)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest10120:OnSubFailed1012005(arg1)
    print("OnSubFailed1012005")
end

function Quest10120:OnSubStart1012006(arg1)
    print("OnSubStart1012006")
end

function Quest10120:OnSubFinish1012006(arg1)
    print("OnSubFinish1012006")
    this:NarratorOnlyTaskByData(datas.PaimonKaiche2, nil, 10120)
end

function Quest10120:OnSubFailed1012006(arg1)
    print("OnSubFailed1012006")
end

function Quest10120:OnSubStart1012007(arg1)
    print("OnSubStart1012007")
end

function Quest10120:OnSubFinish1012007(arg1)
    print("OnSubFinish1012007")
end

function Quest10120:OnSubFailed1012007(arg1)
    print("OnSubFailed1012007")
end

function Quest10120:OnSubStart1012008(arg1)
    print("OnSubStart1012008")
    this:PlayCutsceneIndex("101200801", function(arg1)
        actorUtils.FinishQuestID(false, 1012008)
    end, nil, function(arg1)
        actorUtils.FinishQuestID(true, 1012099)
    end, false)
end

function Quest10120:OnSubFinish1012008(arg1)
    print("OnSubFinish1012008")
end

function Quest10120:OnSubFailed1012008(arg1)
    print("OnSubFailed1012008")
end

function Quest10120:OnSubStart1012009(arg1)
    print("OnSubStart1012009")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        local questNpcCreateTask = arg1_2:CreateQuestNpcCreateTask({npcs.Npc1029Data.alias})
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1029Data.id)
            arg1_2:RequestInteraction(npcs.Npc1029Data.alias)
        end, nil, questNpcCreateTask)
    end)
end

function Quest10120:OnSubFinish1012009(arg1)
    print("OnSubFinish1012009")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
        this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest10120:OnSubFailed1012009(arg1)
    print("OnSubFailed1012009")
end

return Quest10120
