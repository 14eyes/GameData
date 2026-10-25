require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22500 = class("Quest22500", QuestActorProxy)
Quest22500.defaultAlias = "Quest22500"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest22500:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest22500:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2250001"] = self.OnSubStart2250001,
        ["2250002"] = self.OnSubStart2250002,
        ["2250003"] = self.OnSubStart2250003,
        ["2250004"] = self.OnSubStart2250004,
        ["2250005"] = self.OnSubStart2250005,
        ["2250006"] = self.OnSubStart2250006,
        ["2250007"] = self.OnSubStart2250007,
        ["2250008"] = self.OnSubStart2250008,
        ["2250009"] = self.OnSubStart2250009,
        ["2250010"] = self.OnSubStart2250010
    }
end

function Quest22500:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2250001"] = self.OnSubFinish2250001,
        ["2250002"] = self.OnSubFinish2250002,
        ["2250003"] = self.OnSubFinish2250003,
        ["2250004"] = self.OnSubFinish2250004,
        ["2250005"] = self.OnSubFinish2250005,
        ["2250006"] = self.OnSubFinish2250006,
        ["2250007"] = self.OnSubFinish2250007,
        ["2250008"] = self.OnSubFinish2250008,
        ["2250009"] = self.OnSubFinish2250009,
        ["2250010"] = self.OnSubFinish2250010
    }
end

function Quest22500:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2250001"] = self.OnSubFailed2250001,
        ["2250002"] = self.OnSubFailed2250002,
        ["2250003"] = self.OnSubFailed2250003,
        ["2250004"] = self.OnSubFailed2250004,
        ["2250005"] = self.OnSubFailed2250005,
        ["2250006"] = self.OnSubFailed2250006,
        ["2250007"] = self.OnSubFailed2250007,
        ["2250008"] = self.OnSubFailed2250008,
        ["2250009"] = self.OnSubFailed2250009,
        ["2250010"] = self.OnSubFailed2250010
    }
end

function Quest22500:Start()
    print("Start")
end

function Quest22500:OnDestroy()
    print("OnDestroy")
end

function Quest22500:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22500:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22500:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc207401Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc208301Data.alias, 3)
    self:NotifyTo("Npc2083", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
    self:NotifyTo("Npc2074", 0, true)
end

function Quest22500:destroynpc()
    print("destroynpc")
    self:NotifyTo("Npc2083", 1, true)
    self:CreateQuestNpcById(2250006, npcs.Npc208301Data.id, 0)
end

function Quest22500:destroyyuannpc()
    print("destroyyuannpc")
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
    self:NotifyTo("Npc2074", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc207401Data.alias, 0)
    self:DestroyQuestNpcActor(npcs.Npc208301Data.alias, 0)
    self:NotifyTo("Npc2083", 0, true)
end

function Quest22500:hideyinger()
    self:NotifyTo("Npc2083", 1, true)
end

function Quest22500:OnSubStart2250001(arg1)
    print("OnSubStart2250001")
    self:CreateQuestNpc(arg1, 207401, 1)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
    self:NotifyTo("Npc2074", 1, true)
end

function Quest22500:OnSubFinish2250001(arg1)
    print("OnSubFinish2250001")
end

function Quest22500:OnSubFailed2250001(arg1)
    print("OnSubFailed2250001")
end

function Quest22500:OnSubStart2250002(arg1)
    print("OnSubStart2250002")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22500:OnSubFinish2250002(arg1)
    print("OnSubFinish2250002")
end

function Quest22500:OnSubFailed2250002(arg1)
    print("OnSubFailed2250002")
end

function Quest22500:OnSubStart2250003(arg1)
    print("OnSubStart2250003")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22500:OnSubFinish2250003(arg1)
    print("OnSubFinish2250003")
end

function Quest22500:OnSubFailed2250003(arg1)
    print("OnSubFailed2250003")
end

function Quest22500:OnSubStart2250004(arg1)
    print("OnSubStart2250004")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2031", 1, true)
    self:NotifyTo("Npc2030", 1, true)
end

function Quest22500:OnSubFinish2250004(arg1)
    print("OnSubFinish2250004")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.hideyinger, nil, nil, "")
end

function Quest22500:OnSubFailed2250004(arg1)
    print("OnSubFailed2250004")
end

function Quest22500:OnSubStart2250005(arg1)
    print("OnSubStart2250005")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22500:OnSubFinish2250005(arg1)
    print("OnSubFinish2250005")
end

function Quest22500:OnSubFailed2250005(arg1)
    print("OnSubFailed2250005")
end

function Quest22500:OnSubStart2250006(arg1)
    print("OnSubStart2250006")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22500:OnSubFinish2250006(arg1)
    print("OnSubFinish2250006")
    self:ShowBlackScreen(0.5, 1, 0.5, self.destroynpc, nil, nil, "")
end

function Quest22500:OnSubFailed2250006(arg1)
    print("OnSubFailed2250006")
end

function Quest22500:OnSubStart2250007(arg1)
    print("OnSubStart2250007")
    self:SpawnGadget(arg1, 70710134, 1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
    self:NotifyTo("Npc2083", 1, true)
end

function Quest22500:OnSubFinish2250007(arg1)
    print("OnSubFinish2250007")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q2250007")
end

function Quest22500:OnSubFailed2250007(arg1)
    print("OnSubFailed2250007")
end

function Quest22500:OnSubStart2250008(arg1)
    print("OnSubStart2250008")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
    self:NotifyTo("Npc2083", 1, true)
end

function Quest22500:OnSubFinish2250008(arg1)
    print("OnSubFinish2250008")
end

function Quest22500:OnSubFailed2250008(arg1)
    print("OnSubFailed2250008")
end

function Quest22500:OnSubStart2250009(arg1)
    print("OnSubStart2250009")
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22500:OnSubFinish2250009(arg1)
    print("OnSubFinish2250009")
    self:ShowBlackScreen(0.5, 2, 0.5, self.destroyyuannpc, nil, nil, "")
end

function Quest22500:OnSubFailed2250009(arg1)
    print("OnSubFailed2250009")
end

function Quest22500:OnSubStart2250010(arg1)
    print("OnSubStart2250010")
end

function Quest22500:OnSubFinish2250010(arg1)
    print("OnSubFinish2250010")
end

function Quest22500:OnSubFailed2250010(arg1)
    print("OnSubFailed2250010")
end

return Quest22500
