require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72197 = class("Quest72197", QuestActorProxy)
Quest72197.defaultAlias = "Quest72197"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72197:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72197:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7219723"] = self.OnSubStart7219723,
        ["7219722"] = self.OnSubStart7219722,
        ["7219712"] = self.OnSubStart7219712,
        ["7219721"] = self.OnSubStart7219721,
        ["7219713"] = self.OnSubStart7219713,
        ["7219714"] = self.OnSubStart7219714,
        ["7219715"] = self.OnSubStart7219715
    }
end

function Quest72197:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7219723"] = self.OnSubFinish7219723,
        ["7219722"] = self.OnSubFinish7219722,
        ["7219712"] = self.OnSubFinish7219712,
        ["7219721"] = self.OnSubFinish7219721,
        ["7219713"] = self.OnSubFinish7219713,
        ["7219714"] = self.OnSubFinish7219714,
        ["7219715"] = self.OnSubFinish7219715
    }
end

function Quest72197:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7219723"] = self.OnSubFailed7219723,
        ["7219722"] = self.OnSubFailed7219722,
        ["7219712"] = self.OnSubFailed7219712,
        ["7219721"] = self.OnSubFailed7219721,
        ["7219713"] = self.OnSubFailed7219713,
        ["7219714"] = self.OnSubFailed7219714,
        ["7219715"] = self.OnSubFailed7219715
    }
end

function Quest72197:Start()
    print("Start")
end

function Quest72197:OnDestroy()
    print("OnDestroy")
end

function Quest72197:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72197:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72197:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72197:DestroyChangci()
    print("DestroyChangci")
    self:DestroyQuestNpcActor(npcs.Npc20240Data.alias, 3)
end

function Quest72197:CreateChangci15()
    print("CreateChangci15")
    self:CreateQuestNpcById(7219715, npcs.Npc20240Data.id, 0)
end

function Quest72197:CallDelay01()
    print("CallDelay01")
    self:CallDelay(1, self.DestroyChangci)
end

function Quest72197:CreateChangci14()
    print("CreateChangci14")
    self:CreateQuestNpcById(7219714, npcs.Npc20240Data.id, 1)
end

function Quest72197:CreateChangci23()
    print("CreateChangci23")
    self:CreateQuestNpcById(7219723, npcs.Npc20240Data.id, 1)
end

function Quest72197:OnSubStart7219723(arg1)
    print("OnSubStart7219723")
    self:CallDelay(0.5, self.CreateChangci23)
end

function Quest72197:OnSubFinish7219723(arg1)
    print("OnSubFinish7219723")
end

function Quest72197:OnSubFailed7219723(arg1)
    print("OnSubFailed7219723")
end

function Quest72197:OnSubStart7219722(arg1)
    print("OnSubStart7219722")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72197:OnSubFinish7219722(arg1)
    print("OnSubFinish7219722")
end

function Quest72197:OnSubFailed7219722(arg1)
    print("OnSubFailed7219722")
end

function Quest72197:OnSubStart7219712(arg1)
    print("OnSubStart7219712")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72197:OnSubFinish7219712(arg1)
    print("OnSubFinish7219712")
end

function Quest72197:OnSubFailed7219712(arg1)
    print("OnSubFailed7219712")
end

function Quest72197:OnSubStart7219721(arg1)
    print("OnSubStart7219721")
    self:CreateQuestNpc(arg1, npcs.Npc20240Data.id, 1)
end

function Quest72197:OnSubFinish7219721(arg1)
    print("OnSubFinish7219721")
    self:ShowBlackScreen(0.5, 2, 0.5, self.CallDelay01, nil, nil, "", false, true)
end

function Quest72197:OnSubFailed7219721(arg1)
    print("OnSubFailed7219721")
end

function Quest72197:OnSubStart7219713(arg1)
    print("OnSubStart7219713")
end

function Quest72197:OnSubFinish7219713(arg1)
    print("OnSubFinish7219713")
end

function Quest72197:OnSubFailed7219713(arg1)
    print("OnSubFailed7219713")
end

function Quest72197:OnSubStart7219714(arg1)
    print("OnSubStart7219714")
    self:CallDelay(3, self.CreateChangci14)
end

function Quest72197:OnSubFinish7219714(arg1)
    print("OnSubFinish7219714")
    self:ShowBlackScreen(0.5, 2, 0.5, self.CreateChangci15, nil, nil, "", false, true)
end

function Quest72197:OnSubFailed7219714(arg1)
    print("OnSubFailed7219714")
end

function Quest72197:OnSubStart7219715(arg1)
    print("OnSubStart7219715")
end

function Quest72197:OnSubFinish7219715(arg1)
    print("OnSubFinish7219715")
    self:ShowBlackScreen(0.5, 2, 0.5, self.DestroyChangci, nil, nil, "", false, true)
end

function Quest72197:OnSubFailed7219715(arg1)
    print("OnSubFailed7219715")
end

return Quest72197
