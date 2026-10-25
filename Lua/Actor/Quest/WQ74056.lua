require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74056 = class("Quest74056", QuestActorProxy)
Quest74056.defaultAlias = "Quest74056"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74056:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74056:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405601"] = self.OnSubStart7405601,
        ["7405602"] = self.OnSubStart7405602,
        ["7405603"] = self.OnSubStart7405603,
        ["7405604"] = self.OnSubStart7405604
    }
end

function Quest74056:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405601"] = self.OnSubFinish7405601,
        ["7405602"] = self.OnSubFinish7405602,
        ["7405603"] = self.OnSubFinish7405603,
        ["7405604"] = self.OnSubFinish7405604
    }
end

function Quest74056:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74056:Start()
    print("Start")
end

function Quest74056:OnDestroy()
    print("OnDestroy")
end

function Quest74056:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74056:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74056:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74056:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest74056:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:SetQuestVarByMainId(1, 2)
    elseif arg1 == 2 then
        this:SetQuestVarByMainId(2, 2)
    elseif arg1 == 3 then
        this:SetQuestVarByMainId(3, 2)
    end
end

function Quest74056:OnSubStart7405601(arg1)
    print("OnSubStart7405601")
end

function Quest74056:OnSubFinish7405601(arg1)
    print("OnSubFinish7405601")
end

function Quest74056:OnSubStart7405602(arg1)
    print("OnSubStart7405602")
    actorMgr:CreateActorWithPos("Q7405602Trigger", "Actor/Gadget/Q7405602Trigger", 70900002, 0, {x = 200.244, y = -21.444, z = 199.989}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1080)
end

function Quest74056:OnSubFinish7405602(arg1)
    print("OnSubFinish7405602")
end

function Quest74056:OnSubStart7405603(arg1)
    print("OnSubStart7405603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc20995Data.id, 7405603, 0, 10, 1)
end

function Quest74056:OnSubFinish7405603(arg1)
    print("OnSubFinish7405603")
    this:SafeDestroyQuestNpc(npcs.Npc20995Data.alias, 1080)
end

function Quest74056:OnSubStart7405604(arg1)
    print("OnSubStart7405604")
end

function Quest74056:OnSubFinish7405604(arg1)
    print("OnSubFinish7405604")
end

return Quest74056
