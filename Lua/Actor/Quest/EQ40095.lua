require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40095 = class("Quest40095", QuestActorProxy)
Quest40095.defaultAlias = "Quest40095"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest40095:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40095:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009501"] = self.OnSubStart4009501,
        ["4009511"] = self.OnSubStart4009511,
        ["4009502"] = self.OnSubStart4009502,
        ["4009503"] = self.OnSubStart4009503,
        ["4009504"] = self.OnSubStart4009504,
        ["4009514"] = self.OnSubStart4009514,
        ["4009505"] = self.OnSubStart4009505,
        ["4009506"] = self.OnSubStart4009506,
        ["4009507"] = self.OnSubStart4009507,
        ["4009508"] = self.OnSubStart4009508,
        ["4009509"] = self.OnSubStart4009509,
        ["4009510"] = self.OnSubStart4009510,
        ["4009513"] = self.OnSubStart4009513,
        ["4009512"] = self.OnSubStart4009512
    }
end

function Quest40095:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009501"] = self.OnSubFinish4009501,
        ["4009511"] = self.OnSubFinish4009511,
        ["4009502"] = self.OnSubFinish4009502,
        ["4009503"] = self.OnSubFinish4009503,
        ["4009504"] = self.OnSubFinish4009504,
        ["4009514"] = self.OnSubFinish4009514,
        ["4009505"] = self.OnSubFinish4009505,
        ["4009506"] = self.OnSubFinish4009506,
        ["4009507"] = self.OnSubFinish4009507,
        ["4009508"] = self.OnSubFinish4009508,
        ["4009509"] = self.OnSubFinish4009509,
        ["4009510"] = self.OnSubFinish4009510,
        ["4009513"] = self.OnSubFinish4009513,
        ["4009512"] = self.OnSubFinish4009512
    }
end

function Quest40095:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40095:Start()
    print("Start")
end

function Quest40095:OnDestroy()
    print("OnDestroy")
end

function Quest40095:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40095:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40095:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc30253Data.alias, 3)
    actorMgr:DestroyEntityActor("Q4009501Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009502Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009503Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009504Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009513Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009514Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4009511Trigger", 3, false)
end

function Quest40095:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40095:OnSubStart4009501(arg1)
    print("OnSubStart4009501")
    actorMgr:CreateActorWithPos("Q4009501Trigger", "Actor/Gadget/Q4009501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008105_guide").pos, sceneData:GetDummyPoint(3, "Q4008105_guide").rot, true, false, 3)
end

function Quest40095:OnSubFinish4009501(arg1)
    print("OnSubFinish4009501")
    self:ActorDestroy("Q4009501Trigger")
end

function Quest40095:OnSubStart4009511(arg1)
    print("OnSubStart4009511")
    actorMgr:CreateActorWithPos("Q4009511Trigger", "Actor/Gadget/Q4009511Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008105_guide").pos, sceneData:GetDummyPoint(3, "Q4008105_guide").rot, true, false, 3)
end

function Quest40095:OnSubFinish4009511(arg1)
    print("OnSubFinish4009511")
    self:ActorDestroy("Q4009511Trigger")
    self:ShowTutorialDialog(1251)
end

function Quest40095:OnSubStart4009502(arg1)
    print("OnSubStart4009502")
    actorMgr:CreateActorWithPos("Q4009502Trigger", "Actor/Gadget/Q4009502Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008105_guide").pos, sceneData:GetDummyPoint(3, "Q4008105_guide").rot, true, false, 3)
end

function Quest40095:OnSubFinish4009502(arg1)
    print("OnSubFinish4009502")
    self:ActorDestroy("Q4009502Trigger")
end

function Quest40095:OnSubStart4009503(arg1)
    print("OnSubStart4009503")
    actorMgr:CreateActorWithPos("Q4009503Trigger", "Actor/Gadget/Q4009503Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008107_guide").pos, sceneData:GetDummyPoint(3, "Q4008107_guide").rot, true, false, 3)
end

function Quest40095:OnSubFinish4009503(arg1)
    print("OnSubFinish4009503")
    self:ActorDestroy("Q4009503Trigger")
end

function Quest40095:OnSubStart4009504(arg1)
    print("OnSubStart4009504")
    actorMgr:CreateActorWithPos("Q4009504Trigger", "Actor/Gadget/Q4009504Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008107_guide").pos, sceneData:GetDummyPoint(3, "Q4008107_guide").rot, true, false, 3)
end

function Quest40095:OnSubFinish4009504(arg1)
    print("OnSubFinish4009504")
    self:ActorDestroy("Q4009504Trigger")
end

function Quest40095:OnSubStart4009514(arg1)
    print("OnSubStart4009514")
    actorMgr:CreateActorWithPos("Q4009514Trigger", "Actor/Gadget/Q4009514Trigger", 70900002, 0, {x = -1911.207, y = 203.1, z = 2503.602}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40095:OnSubFinish4009514(arg1)
    print("OnSubFinish4009514")
    self:ActorDestroy("Q4009514Trigger")
    self:ShowTutorialDialog(1252)
end

function Quest40095:OnSubStart4009505(arg1)
    print("OnSubStart4009505")
end

function Quest40095:OnSubFinish4009505(arg1)
    print("OnSubFinish4009505")
end

function Quest40095:OnSubStart4009506(arg1)
    print("OnSubStart4009506")
end

function Quest40095:OnSubFinish4009506(arg1)
    print("OnSubFinish4009506")
end

function Quest40095:OnSubStart4009507(arg1)
    print("OnSubStart4009507")
end

function Quest40095:OnSubFinish4009507(arg1)
    print("OnSubFinish4009507")
end

function Quest40095:OnSubStart4009508(arg1)
    print("OnSubStart4009508")
end

function Quest40095:OnSubFinish4009508(arg1)
    print("OnSubFinish4009508")
end

function Quest40095:OnSubStart4009509(arg1)
    print("OnSubStart4009509")
end

function Quest40095:OnSubFinish4009509(arg1)
    print("OnSubFinish4009509")
end

function Quest40095:OnSubStart4009510(arg1)
    print("OnSubStart4009510")
end

function Quest40095:OnSubFinish4009510(arg1)
    print("OnSubFinish4009510")
end

function Quest40095:OnSubStart4009513(arg1)
    print("OnSubStart4009513")
    actorMgr:CreateActorWithPos("Q4009513Trigger", "Actor/Gadget/Q4009513Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008122_guide").pos, sceneData:GetDummyPoint(3, "Q4008122_guide").rot, true, false, 3)
end

function Quest40095:OnSubFinish4009513(arg1)
    print("OnSubFinish4009513")
    self:ActorDestroy("Q4009513Trigger")
end

function Quest40095:OnSubStart4009512(arg1)
    print("OnSubStart4009512")
end

function Quest40095:OnSubFinish4009512(arg1)
    print("OnSubFinish4009512")
end

return Quest40095
