require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74178 = class("Quest74178", QuestActorProxy)
Quest74178.defaultAlias = "Quest74178"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74178:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74178:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7417801"] = self.OnSubStart7417801,
        ["7417802"] = self.OnSubStart7417802,
        ["7417803"] = self.OnSubStart7417803,
        ["7417804"] = self.OnSubStart7417804,
        ["7417805"] = self.OnSubStart7417805,
        ["7417806"] = self.OnSubStart7417806,
        ["7417807"] = self.OnSubStart7417807,
        ["7417808"] = self.OnSubStart7417808,
        ["7417809"] = self.OnSubStart7417809,
        ["7417810"] = self.OnSubStart7417810
    }
end

function Quest74178:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7417801"] = self.OnSubFinish7417801,
        ["7417802"] = self.OnSubFinish7417802,
        ["7417803"] = self.OnSubFinish7417803,
        ["7417804"] = self.OnSubFinish7417804,
        ["7417805"] = self.OnSubFinish7417805,
        ["7417806"] = self.OnSubFinish7417806,
        ["7417807"] = self.OnSubFinish7417807,
        ["7417808"] = self.OnSubFinish7417808,
        ["7417809"] = self.OnSubFinish7417809,
        ["7417810"] = self.OnSubFinish7417810
    }
end

function Quest74178:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74178:Start()
    print("Start")
end

function Quest74178:OnDestroy()
    print("OnDestroy")
end

function Quest74178:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74178:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74178:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74178:OnSubStart7417801(arg1)
    print("OnSubStart7417801")
end

function Quest74178:OnSubFinish7417801(arg1)
    print("OnSubFinish7417801")
end

function Quest74178:OnSubStart7417802(arg1)
    print("OnSubStart7417802")
    this:CreateQuestNpc(arg1, npcs.Npc21273Data.id, 0)
    actorMgr:CreateActorWithPos("Q7417801Trigger", "Actor/Gadget/Q7417801Trigger", 70900002, 0, {x = 3849.434, y = 493.794, z = 2979.825}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74178:OnSubFinish7417802(arg1)
    print("OnSubFinish7417802")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21273Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21275Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21276Data.alias, 3)
    this:SetNavigationByMainId(74178, true)
end

function Quest74178:OnSubStart7417803(arg1)
    print("OnSubStart7417803")
    actorMgr:CreateActorWithPos("Q7417803Trigger", "Actor/Gadget/Q7417803Trigger", 70900002, 0, {x = 3843.63, y = 468.09, z = 2860.359}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74178:OnSubFinish7417803(arg1)
    print("OnSubFinish7417803")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74178:OnSubStart7417804(arg1)
    print("OnSubStart7417804")
    this:CreateQuestNpc(arg1, npcs.Npc21273Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21275Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21276Data.id, 0)
    this:RequestInteraction(npcs.Npc21273Data.alias, "", true)
end

function Quest74178:OnSubFinish7417804(arg1)
    print("OnSubFinish7417804")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21273Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21275Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21276Data.alias, 3)
end

function Quest74178:OnSubStart7417805(arg1)
    print("OnSubStart7417805")
    this:NarratorOnlyTaskByData(datas.Narrator_7417801)
end

function Quest74178:OnSubFinish7417805(arg1)
    print("OnSubFinish7417805")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74178:OnSubStart7417806(arg1)
    print("OnSubStart7417806")
    this:CreateQuestNpc(arg1, npcs.Npc21274Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21275Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21276Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5233Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5232Data.id, 0)
    this:RequestInteraction(npcs.Npc21274Data.alias, "", true)
end

function Quest74178:OnSubFinish7417806(arg1)
    print("OnSubFinish7417806")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21274Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21275Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21276Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5233Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5232Data.alias, 3)
end

function Quest74178:OnSubStart7417807(arg1)
    print("OnSubStart7417807")
end

function Quest74178:OnSubFinish7417807(arg1)
    print("OnSubFinish7417807")
    this:NarratorOnlyTaskByData(datas.Narrator_7417802)
end

function Quest74178:OnSubStart7417808(arg1)
    print("OnSubStart7417808")
    actorMgr:CreateActorWithPos("Q7417808Trigger", "Actor/Gadget/Q7417808Trigger", 70900002, 0, {x = 3453.383, y = 461.336, z = 3094.341}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74178:OnSubFinish7417808(arg1)
    print("OnSubFinish7417808")
    this:NarratorOnlyTaskByData(datas.Narrator_7417804)
end

function Quest74178:OnSubStart7417809(arg1)
    print("OnSubStart7417809")
end

function Quest74178:OnSubFinish7417809(arg1)
    print("OnSubFinish7417809")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest74178:OnSubStart7417810(arg1)
    print("OnSubStart7417810")
    this:CreateQuestNpc(arg1, npcs.Npc21274Data.id, 0)
    actorMgr:CreateActorWithPos("Q74178Trigger", "Actor/Gadget/Q74178Trigger", 70900002, 0, {x = 3455.763, y = 458.997, z = 3090.101}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74178:OnSubFinish7417810(arg1)
    print("OnSubFinish7417810")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21274Data.alias, 3)
end

return Quest74178
