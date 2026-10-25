require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019015Trigger_1 = class("Q4019015Trigger_1", GadgetActorProxy)
Q4019015Trigger_1.defaultAlias = "Q4019015Trigger_1"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019015Trigger_1:OnPostDataPrepare()
    print("Q4019015Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q4019015Trigger_1:OnPostComponentPrepare()
    print("Q4019015Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019015Trigger_1:TriggerIn()
    print("Q4019015Trigger_1 - TriggerIn")
    actorMgr:GetActor("40190"):AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:GetActor("40190"):ShowTutorialDialog(2061, function(arg1)
            actorMgr:GetActor("40190"):QuestNarratorTask(datas.NarratorWithId_4019008, nil)
        end)
    end)

    this:DestroySelf()
end

function Q4019015Trigger_1:PreTriggerIn()
    print("Q4019015Trigger_1 - PreTriggerIn")
end

function Q4019015Trigger_1:LightUpTriggerIn()
    print("Q4019015Trigger_1 - LightUpTriggerIn")
end

function Q4019015Trigger_1:TriggerOut()
    print("Q4019015Trigger_1 - TriggerOut")
end

return Q4019015Trigger_1
