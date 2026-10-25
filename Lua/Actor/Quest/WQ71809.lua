require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71809 = class("Quest71809", QuestActorProxy)
Quest71809.defaultAlias = "Quest71809"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71809:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71809:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7180901"] = self.OnSubStart7180901,
        ["7180902"] = self.OnSubStart7180902,
        ["7180903"] = self.OnSubStart7180903,
        ["7180904"] = self.OnSubStart7180904,
        ["7180905"] = self.OnSubStart7180905,
        ["7180906"] = self.OnSubStart7180906,
        ["7180907"] = self.OnSubStart7180907,
        ["7180908"] = self.OnSubStart7180908,
        ["7180909"] = self.OnSubStart7180909
    }
end

function Quest71809:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7180901"] = self.OnSubFinish7180901,
        ["7180902"] = self.OnSubFinish7180902,
        ["7180903"] = self.OnSubFinish7180903,
        ["7180904"] = self.OnSubFinish7180904,
        ["7180905"] = self.OnSubFinish7180905,
        ["7180906"] = self.OnSubFinish7180906,
        ["7180907"] = self.OnSubFinish7180907,
        ["7180908"] = self.OnSubFinish7180908,
        ["7180909"] = self.OnSubFinish7180909
    }
end

function Quest71809:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7180901"] = self.OnSubFailed7180901,
        ["7180902"] = self.OnSubFailed7180902,
        ["7180903"] = self.OnSubFailed7180903,
        ["7180904"] = self.OnSubFailed7180904,
        ["7180905"] = self.OnSubFailed7180905,
        ["7180906"] = self.OnSubFailed7180906,
        ["7180907"] = self.OnSubFailed7180907,
        ["7180908"] = self.OnSubFailed7180908,
        ["7180909"] = self.OnSubFailed7180909
    }
end

function Quest71809:Start()
    print("Start")
end

function Quest71809:OnDestroy()
    print("OnDestroy")
end

function Quest71809:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71809:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71809:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71809:OnSubStart7180901(arg1)
    print("OnSubStart7180901")
end

function Quest71809:OnSubFinish7180901(arg1)
    print("OnSubFinish7180901")
end

function Quest71809:OnSubFailed7180901(arg1)
    print("OnSubFailed7180901")
end

function Quest71809:OnSubStart7180902(arg1)
    print("OnSubStart7180902")
end

function Quest71809:OnSubFinish7180902(arg1)
    print("OnSubFinish7180902")
    self:NarratorOnlyTask(datas.Paimon02, nil, "")
end

function Quest71809:OnSubFailed7180902(arg1)
    print("OnSubFailed7180902")
end

function Quest71809:OnSubStart7180903(arg1)
    print("OnSubStart7180903")
end

function Quest71809:OnSubFinish7180903(arg1)
    print("OnSubFinish7180903")
    self:NarratorOnlyTask(datas.Paimon03, nil, "")
end

function Quest71809:OnSubFailed7180903(arg1)
    print("OnSubFailed7180903")
end

function Quest71809:OnSubStart7180904(arg1)
    print("OnSubStart7180904")
    self:CreateQuestNpc(arg1, npcs.Npc2060Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2011Data.id, 2)
end

function Quest71809:OnSubFinish7180904(arg1)
    print("OnSubFinish7180904")
    self:NarratorOnlyTask(datas.Paimon04, nil, "")
end

function Quest71809:OnSubFailed7180904(arg1)
    print("OnSubFailed7180904")
end

function Quest71809:OnSubStart7180905(arg1)
    print("OnSubStart7180905")
end

function Quest71809:OnSubFinish7180905(arg1)
    print("OnSubFinish7180905")
end

function Quest71809:OnSubFailed7180905(arg1)
    print("OnSubFailed7180905")
end

function Quest71809:OnSubStart7180906(arg1)
    print("OnSubStart7180906")
end

function Quest71809:OnSubFinish7180906(arg1)
    print("OnSubFinish7180906")
end

function Quest71809:OnSubFailed7180906(arg1)
    print("OnSubFailed7180906")
end

function Quest71809:OnSubStart7180907(arg1)
    print("OnSubStart7180907")
end

function Quest71809:OnSubFinish7180907(arg1)
    print("OnSubFinish7180907")
end

function Quest71809:OnSubFailed7180907(arg1)
    print("OnSubFailed7180907")
end

function Quest71809:OnSubStart7180908(arg1)
    print("OnSubStart7180908")
end

function Quest71809:OnSubFinish7180908(arg1)
    print("OnSubFinish7180908")
end

function Quest71809:OnSubFailed7180908(arg1)
    print("OnSubFailed7180908")
end

function Quest71809:OnSubStart7180909(arg1)
    print("OnSubStart7180909")
end

function Quest71809:OnSubFinish7180909(arg1)
    print("OnSubFinish7180909")
    self:DestroyQuestNpcActor(npcs.Npc2060Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2011Data.alias, 3)
end

function Quest71809:OnSubFailed7180909(arg1)
    print("OnSubFailed7180909")
end

return Quest71809
