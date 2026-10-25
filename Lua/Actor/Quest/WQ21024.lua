require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21024 = class("Quest21024", QuestActorProxy)
Quest21024.defaultAlias = "Quest21024"
local clientData
local shareData
local subIDs
local npc
local v
local npc2
local NPCUtil = require("Actor/Npc/NPCUtil")

function Quest21024:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    subIDs = clientData.SubIDs
    v = shareData.QuestData["2102401"].npcs[1]
    npc = shareData.QuestData["2102405"].npcs[1]
    npc2 = shareData.QuestData["2102408"].npcs[1]
end

function Quest21024:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2102401"] = self.OnSubStart2102401
    self.subStartHandlers["2102402"] = self.OnSubStart2102402
    self.subStartHandlers["2102403"] = self.OnSubStart2102403
    self.subStartHandlers["2102404"] = self.OnSubStart2102404
    self.subStartHandlers["2102405"] = self.OnSubStart2102405
    self.subStartHandlers["2102406"] = self.OnSubStart2102406
    self.subStartHandlers["2102407"] = self.OnSubStart2102407
    self.subStartHandlers["2102408"] = self.OnSubStart2102408
    self.subStartHandlers["2102409"] = self.OnSubStart2102409
end

function Quest21024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2102401"] = self.OnSubFinish2102401
    self.subFinishHandlers["2102402"] = self.OnSubFinish2102402
    self.subFinishHandlers["2102403"] = self.OnSubFinish2102403
    self.subFinishHandlers["2102404"] = self.OnSubFinish2102404
    self.subFinishHandlers["2102405"] = self.OnSubFinish2102405
    self.subFinishHandlers["2102406"] = self.OnSubFinish2102406
    self.subFinishHandlers["2102407"] = self.OnSubFinish2102407
    self.subFinishHandlers["2102408"] = self.OnSubFinish2102408
    self.subFinishHandlers["2102409"] = self.OnSubFinish2102409
end

function Quest21024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2102401"] = self.OnSubFailed2102401
    self.subFailedHandlers["2102402"] = self.OnSubFailed2102402
    self.subFailedHandlers["2102403"] = self.OnSubFailed2102403
    self.subFailedHandlers["2102404"] = self.OnSubFailed2102404
    self.subFailedHandlers["2102405"] = self.OnSubFailed2102405
    self.subFailedHandlers["2102406"] = self.OnSubFailed2102406
    self.subFailedHandlers["2102407"] = self.OnSubFailed2102407
    self.subFailedHandlers["2102408"] = self.OnSubFailed2102408
    self.subFailedHandlers["2102409"] = self.OnSubFailed2102409
end

function Quest21024:OnSubStart2102401(arg1)
    print("2102401 start")
end

function Quest21024:OnSubFinish2102401(arg1) end
function Quest21024:OnSubFailed2102401(arg1) end
function Quest21024:OnSubStart2102403(arg1) end
function Quest21024:OnSubFinish2102403(arg1) end
function Quest21024:OnSubFailed2102403(arg1) end
function Quest21024:OnSubStart2102404(arg1) end
function Quest21024:OnSubFinish2102404(arg1) end
function Quest21024:OnSubFailed2102404(arg1) end

function Quest21024:OnSubStart2102405(arg1)
    print("2102405 start")
    self:CreateQuestNpc(arg1, npc.id, 1)
    self:NotifyTo("Npc2421", NPCUtil.NpcEventType.HIDESELF, true)
end

function Quest21024:OnSubFinish2102405(arg1) end
function Quest21024:OnSubFailed2102405(arg1) end
function Quest21024:OnSubStart2102406(arg1) end
function Quest21024:OnSubFinish2102406(arg1) end
function Quest21024:OnSubFailed2102406(arg1) end
function Quest21024:OnSubStart2102408(arg1) end

function Quest21024:OnSubFinish2102408(arg1)
    print("408killLANDA")
end

function Quest21024:OnSubFailed2102408(arg1) end
function Quest21024:OnSubStart2102410(arg1) end
function Quest21024:OnSubFinish2102410(arg1) end
function Quest21024:OnSubFailed2102410(arg1) end

function Quest21024:OnSubStart2102409(arg1)
    print("409killLANDA")
end

function Quest21024:OnSubFinish2102409(arg1)
    print("killbaoer")
    self:DestroyQuestNpcActor(npc.alias, 3)
    self:NotifyTo("Npc2421", NPCUtil.NpcEventType.STARTDAILY, true)
end

function Quest21024:OnSubFailed2102409(arg1) end
function Quest21024:Start() end
function Quest21024:OnDestroy() end
return Quest21024
