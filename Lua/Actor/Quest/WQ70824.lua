require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70824 = class("Quest70824", QuestActorProxy)
Quest70824.defaultAlias = "Quest70824"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest70824:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest70824:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7082401"] = self.OnSubStart7082401,
        ["7082402"] = self.OnSubStart7082402,
        ["7082403"] = self.OnSubStart7082403,
        ["7082404"] = self.OnSubStart7082404
    }
end

function Quest70824:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7082401"] = self.OnSubFinish7082401,
        ["7082402"] = self.OnSubFinish7082402,
        ["7082403"] = self.OnSubFinish7082403,
        ["7082404"] = self.OnSubFinish7082404
    }
end

function Quest70824:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7082401"] = self.OnSubFailed7082401,
        ["7082402"] = self.OnSubFailed7082402,
        ["7082403"] = self.OnSubFailed7082403,
        ["7082404"] = self.OnSubFailed7082404
    }
end

function Quest70824:Start()
    print("Start")
end

function Quest70824:OnDestroy()
    print("OnDestroy")
end

function Quest70824:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70824:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70824:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70824:DestroyAllNPC()
    print("DestroyAllNPC")
    self:DestroyQuestNpcActor(npcs.Npc1531Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1596Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1595Data.alias, 3)
end

function Quest70824:CreateIndoorIrene()
    print("CreateIndoorIrene")
    self:CreateQuestNpcById(7082402, npcs.Npc1531Data2.id, 1)
end

function Quest70824:OnSubStart7082401(arg1)
    print("OnSubStart7082401")
    self:CreateQuestNpc(arg1, npcs.Npc1531Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1596Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1595Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1531Data.alias):DoFreeStyle(1230, true)
    self:CreateSpeechBubbleTask(npcs.Npc1531Data.id, 708240801, 3, true, 1, 2)
end

function Quest70824:OnSubFinish7082401(arg1)
    print("OnSubFinish7082401")
end

function Quest70824:OnSubFailed7082401(arg1)
    print("OnSubFailed7082401")
end

function Quest70824:OnSubStart7082402(arg1)
    print("OnSubStart7082402")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.CreateIndoorIrene, nil, nil, "")
end

function Quest70824:OnSubFinish7082402(arg1)
    print("OnSubFinish7082402")
    self:NarratorOnlyTask(datas.IreneReminder, nil, "")
end

function Quest70824:OnSubFailed7082402(arg1)
    print("OnSubFailed7082402")
end

function Quest70824:OnSubStart7082403(arg1)
    print("OnSubStart7082403")
end

function Quest70824:OnSubFinish7082403(arg1)
    print("OnSubFinish7082403")
    self:NarratorOnlyTask(datas.PaimonReminder, nil, "")
end

function Quest70824:OnSubFailed7082403(arg1)
    print("OnSubFailed7082403")
end

function Quest70824:OnSubStart7082404(arg1)
    print("OnSubStart7082404")
end

function Quest70824:OnSubFinish7082404(arg1)
    print("OnSubFinish7082404")
    self:ShowBlackScreen(0.2, 1.5, 0.2, self.DestroyAllNPC, nil, nil, "")
end

function Quest70824:OnSubFailed7082404(arg1)
    print("OnSubFailed7082404")
end

return Quest70824
