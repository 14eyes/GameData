require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74151 = class("Quest74151", QuestActorProxy)
Quest74151.defaultAlias = "Quest74151"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74151:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74151:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7415104"] = self.OnSubStart7415104,
        ["7415101"] = self.OnSubStart7415101,
        ["7415108"] = self.OnSubStart7415108,
        ["7415109"] = self.OnSubStart7415109,
        ["7415102"] = self.OnSubStart7415102,
        ["7415110"] = self.OnSubStart7415110,
        ["7415103"] = self.OnSubStart7415103,
        ["7415105"] = self.OnSubStart7415105,
        ["7415107"] = self.OnSubStart7415107,
        ["7415111"] = self.OnSubStart7415111,
        ["7415112"] = self.OnSubStart7415112,
        ["7415106"] = self.OnSubStart7415106
    }
end

function Quest74151:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7415104"] = self.OnSubFinish7415104,
        ["7415101"] = self.OnSubFinish7415101,
        ["7415108"] = self.OnSubFinish7415108,
        ["7415109"] = self.OnSubFinish7415109,
        ["7415102"] = self.OnSubFinish7415102,
        ["7415110"] = self.OnSubFinish7415110,
        ["7415103"] = self.OnSubFinish7415103,
        ["7415105"] = self.OnSubFinish7415105,
        ["7415107"] = self.OnSubFinish7415107,
        ["7415111"] = self.OnSubFinish7415111,
        ["7415112"] = self.OnSubFinish7415112,
        ["7415106"] = self.OnSubFinish7415106
    }
end

function Quest74151:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74151:Start()
    print("Start")
end

function Quest74151:OnDestroy()
    print("OnDestroy")
end

function Quest74151:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74151:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74151:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74151:OnSubStart7415104(arg1)
    print("OnSubStart7415104")
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74151:OnSubFinish7415104(arg1)
    print("OnSubFinish7415104")
end

function Quest74151:OnSubStart7415101(arg1)
    print("OnSubStart7415101")
    this:CreateQuestNpc(arg1, npcs.Npc21252Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74151:OnSubFinish7415101(arg1)
    print("OnSubFinish7415101")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74151:OnSubStart7415108(arg1)
    print("OnSubStart7415108")
    this:CreateQuestNpc(arg1, npcs.Npc21252Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74151:OnSubFinish7415108(arg1)
    print("OnSubFinish7415108")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74151:OnSubStart7415109(arg1)
    print("OnSubStart7415109")
end

function Quest74151:OnSubFinish7415109(arg1)
    print("OnSubFinish7415109")
end

function Quest74151:OnSubStart7415102(arg1)
    print("OnSubStart7415102")
end

function Quest74151:OnSubFinish7415102(arg1)
    print("OnSubFinish7415102")
end

function Quest74151:OnSubStart7415110(arg1)
    print("OnSubStart7415110")
end

function Quest74151:OnSubFinish7415110(arg1)
    print("OnSubFinish7415110")
end

function Quest74151:OnSubStart7415103(arg1)
    print("OnSubStart7415103")
    this:CreateQuestNpc(arg1, npcs.Npc21252Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74151:OnSubFinish7415103(arg1)
    print("OnSubFinish7415103")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74151:OnSubStart7415105(arg1)
    print("OnSubStart7415105")
    this:CreateQuestNpc(arg1, npcs.Npc21252Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74151:OnSubFinish7415105(arg1)
    print("OnSubFinish7415105")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc21252Data.alias, 3)
end

function Quest74151:OnSubStart7415107(arg1)
    print("OnSubStart7415107")
end

function Quest74151:OnSubFinish7415107(arg1)
    print("OnSubFinish7415107")
end

function Quest74151:OnSubStart7415111(arg1)
    print("OnSubStart7415111")
end

function Quest74151:OnSubFinish7415111(arg1)
    print("OnSubFinish7415111")
end

function Quest74151:OnSubStart7415112(arg1)
    print("OnSubStart7415112")
end

function Quest74151:OnSubFinish7415112(arg1)
    print("OnSubFinish7415112")
end

function Quest74151:OnSubStart7415106(arg1)
    print("OnSubStart7415106")
    actorMgr:CreateActorWithPos("Q7415106Trigger", "Actor/Gadget/Q7415106Trigger", 70900002, 0, {x = 3589.943, y = 437.652, z = 4509.935}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74151:OnSubFinish7415106(arg1)
    print("OnSubFinish7415106")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false, function(arg1) end)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

return Quest74151
