require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74153 = class("Quest74153", QuestActorProxy)
Quest74153.defaultAlias = "Quest74153"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74153:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74153:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7415309"] = self.OnSubStart7415309,
        ["7415301"] = self.OnSubStart7415301,
        ["7415302"] = self.OnSubStart7415302,
        ["7415303"] = self.OnSubStart7415303,
        ["7415304"] = self.OnSubStart7415304,
        ["7415312"] = self.OnSubStart7415312,
        ["7415310"] = self.OnSubStart7415310,
        ["7415305"] = self.OnSubStart7415305,
        ["7415306"] = self.OnSubStart7415306,
        ["7415311"] = self.OnSubStart7415311,
        ["7415307"] = self.OnSubStart7415307,
        ["7415308"] = self.OnSubStart7415308
    }
end

function Quest74153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7415309"] = self.OnSubFinish7415309,
        ["7415301"] = self.OnSubFinish7415301,
        ["7415302"] = self.OnSubFinish7415302,
        ["7415303"] = self.OnSubFinish7415303,
        ["7415304"] = self.OnSubFinish7415304,
        ["7415312"] = self.OnSubFinish7415312,
        ["7415310"] = self.OnSubFinish7415310,
        ["7415305"] = self.OnSubFinish7415305,
        ["7415306"] = self.OnSubFinish7415306,
        ["7415311"] = self.OnSubFinish7415311,
        ["7415307"] = self.OnSubFinish7415307,
        ["7415308"] = self.OnSubFinish7415308
    }
end

function Quest74153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74153:Start()
    print("Start")
end

function Quest74153:OnDestroy()
    print("OnDestroy")
end

function Quest74153:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74153:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74153:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74153:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest74153:OnSubStart7415309(arg1)
    print("OnSubStart7415309")
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74153:OnSubFinish7415309(arg1)
    print("OnSubFinish7415309")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74153:OnSubStart7415301(arg1)
    print("OnSubStart7415301")
    this:CreateQuestNpc(arg1, npcs.Npc21258Data.id, 0)
end

function Quest74153:OnSubFinish7415301(arg1)
    print("OnSubFinish7415301")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21258Data.alias, 3)
end

function Quest74153:OnSubStart7415302(arg1)
    print("OnSubStart7415302")
    this:CreateQuestNpc(arg1, npcs.Npc21255Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21256Data.id, 0)
end

function Quest74153:OnSubFinish7415302(arg1)
    print("OnSubFinish7415302")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:TransmitPlayerWithDialogTextById(arg1, 1, nil, 0, nil, nil)
end

function Quest74153:OnSubStart7415303(arg1)
    print("OnSubStart7415303")
end

function Quest74153:OnSubFinish7415303(arg1)
    print("OnSubFinish7415303")
    this:SafeDestroyQuestNpc(npcs.Npc21255Data.alias, 3)
end

function Quest74153:OnSubStart7415304(arg1)
    print("OnSubStart7415304")
end

function Quest74153:OnSubFinish7415304(arg1)
    print("OnSubFinish7415304")
    this:SafeDestroyQuestNpc(npcs.Npc21256Data.alias, 3)
end

function Quest74153:OnSubStart7415312(arg1)
    print("OnSubStart7415312")
end

function Quest74153:OnSubFinish7415312(arg1)
    print("OnSubFinish7415312")
end

function Quest74153:OnSubStart7415310(arg1)
    print("OnSubStart7415310")
end

function Quest74153:OnSubFinish7415310(arg1)
    print("OnSubFinish7415310")
end

function Quest74153:OnSubStart7415305(arg1)
    print("OnSubStart7415305")
    actorMgr:CreateActorWithPos("Q7415306Trigger2", "Actor/Gadget/Q7415306Trigger2", 70900002, 0, {x = 3600.465, y = 438.689, z = 4518.739}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74153:OnSubFinish7415305(arg1)
    print("OnSubFinish7415305")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:NpcDestroy(npcs.PaimonData.alias, 3)
end

function Quest74153:OnSubStart7415306(arg1)
    print("OnSubStart7415306")
    this:CreateQuestNpc(arg1, npcs.Npc21259Data.id, 0)
    actorMgr:CreateActorWithPos("Q74153Trigger1", "Actor/Gadget/Q74153Trigger1", 70900002, 0, {x = 3501.726, y = 283.082, z = 4535.863}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74153:OnSubFinish7415306(arg1)
    print("OnSubFinish7415306")
end

function Quest74153:OnSubStart7415311(arg1)
    print("OnSubStart7415311")
end

function Quest74153:OnSubFinish7415311(arg1)
    print("OnSubFinish7415311")
end

function Quest74153:OnSubStart7415307(arg1)
    print("OnSubStart7415307")
end

function Quest74153:OnSubFinish7415307(arg1)
    print("OnSubFinish7415307")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21259Data.alias, 3)
end

function Quest74153:OnSubStart7415308(arg1)
    print("OnSubStart7415308")
    this:CreateQuestNpc(arg1, npcs.Npc21250Data.id, 0)
    actorMgr:CreateActorWithPos("Q7415308Trigger2", "Actor/Gadget/Q7415308Trigger2", 70900002, 0, {x = 3430.681, y = 291.919, z = 4469.125}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74153:OnSubFinish7415308(arg1)
    print("OnSubFinish7415308")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21250Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21253Data.alias, 3)
end

return Quest74153
