require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70500 = class("Quest70500", QuestActorProxy)
Quest70500.defaultAlias = "Quest70500"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70500:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70500:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050001"] = self.OnSubStart7050001,
        ["7050002"] = self.OnSubStart7050002,
        ["7050003"] = self.OnSubStart7050003,
        ["7050007"] = self.OnSubStart7050007,
        ["7050009"] = self.OnSubStart7050009,
        ["7050010"] = self.OnSubStart7050010,
        ["7050004"] = self.OnSubStart7050004,
        ["7050006"] = self.OnSubStart7050006,
        ["7050005"] = self.OnSubStart7050005,
        ["7050008"] = self.OnSubStart7050008
    }
end

function Quest70500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050001"] = self.OnSubFinish7050001,
        ["7050002"] = self.OnSubFinish7050002,
        ["7050003"] = self.OnSubFinish7050003,
        ["7050007"] = self.OnSubFinish7050007,
        ["7050009"] = self.OnSubFinish7050009,
        ["7050010"] = self.OnSubFinish7050010,
        ["7050004"] = self.OnSubFinish7050004,
        ["7050006"] = self.OnSubFinish7050006,
        ["7050005"] = self.OnSubFinish7050005,
        ["7050008"] = self.OnSubFinish7050008
    }
end

function Quest70500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7050001"] = self.OnSubFailed7050001,
        ["7050002"] = self.OnSubFailed7050002,
        ["7050003"] = self.OnSubFailed7050003,
        ["7050007"] = self.OnSubFailed7050007,
        ["7050009"] = self.OnSubFailed7050009,
        ["7050010"] = self.OnSubFailed7050010,
        ["7050004"] = self.OnSubFailed7050004,
        ["7050006"] = self.OnSubFailed7050006,
        ["7050005"] = self.OnSubFailed7050005,
        ["7050008"] = self.OnSubFailed7050008
    }
end

function Quest70500:Start()
    print("Start")
end

function Quest70500:OnDestroy()
    print("OnDestroy")
end

function Quest70500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70500:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70500:Finishself()
    print("Finishself")
    self:FinishQuestID(false, 7050010)
end

function Quest70500:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:FinishQuestID(false, 7050001)
    end
end

function Quest70500:OnSubStart7050001(arg1)
    print("OnSubStart7050001")
    self:CreateQuestNpc(arg1, npcs.Npc10258Data.id, 1)
end

function Quest70500:OnSubFinish7050001(arg1)
    print("OnSubFinish7050001")
end

function Quest70500:OnSubFailed7050001(arg1)
    print("OnSubFailed7050001")
end

function Quest70500:OnSubStart7050002(arg1)
    print("OnSubStart7050002")
end

function Quest70500:OnSubFinish7050002(arg1)
    print("OnSubFinish7050002")
end

function Quest70500:OnSubFailed7050002(arg1)
    print("OnSubFailed7050002")
end

function Quest70500:OnSubStart7050003(arg1)
    print("OnSubStart7050003")
end

function Quest70500:OnSubFinish7050003(arg1)
    print("OnSubFinish7050003")
end

function Quest70500:OnSubFailed7050003(arg1)
    print("OnSubFailed7050003")
end

function Quest70500:OnSubStart7050007(arg1)
    print("OnSubStart7050007")
end

function Quest70500:OnSubFinish7050007(arg1)
    print("OnSubFinish7050007")
end

function Quest70500:OnSubFailed7050007(arg1)
    print("OnSubFailed7050007")
end

function Quest70500:OnSubStart7050009(arg1)
    print("OnSubStart7050009")
end

function Quest70500:OnSubFinish7050009(arg1)
    print("OnSubFinish7050009")
end

function Quest70500:OnSubFailed7050009(arg1)
    print("OnSubFailed7050009")
end

function Quest70500:OnSubStart7050010(arg1)
    print("OnSubStart7050010")
    self:CountDownUIStart(0, 0, 3)
    self:CallDelay(3.5, self.Finishself)
end

function Quest70500:OnSubFinish7050010(arg1)
    print("OnSubFinish7050010")
end

function Quest70500:OnSubFailed7050010(arg1)
    print("OnSubFailed7050010")
end

function Quest70500:OnSubStart7050004(arg1)
    print("OnSubStart7050004")
end

function Quest70500:OnSubFinish7050004(arg1)
    print("OnSubFinish7050004")
end

function Quest70500:OnSubFailed7050004(arg1)
    print("OnSubFailed7050004")
end

function Quest70500:OnSubStart7050006(arg1)
    print("OnSubStart7050006")
end

function Quest70500:OnSubFinish7050006(arg1)
    print("OnSubFinish7050006")
end

function Quest70500:OnSubFailed7050006(arg1)
    print("OnSubFailed7050006")
end

function Quest70500:OnSubStart7050005(arg1)
    print("OnSubStart7050005")
end

function Quest70500:OnSubFinish7050005(arg1)
    print("OnSubFinish7050005")
end

function Quest70500:OnSubFailed7050005(arg1)
    print("OnSubFailed7050005")
end

function Quest70500:OnSubStart7050008(arg1)
    print("OnSubStart7050008")
end

function Quest70500:OnSubFinish7050008(arg1)
    print("OnSubFinish7050008")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:GetQuestNpcActor(npcs.Npc10258Data.alias):DestroyWithDisappear(false)
end

function Quest70500:OnSubFailed7050008(arg1)
    print("OnSubFailed7050008")
end

return Quest70500
