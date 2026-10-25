require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7714819Trigger = class("Q7714819Trigger", GadgetActorProxy)
Q7714819Trigger.defaultAlias = "Q7714819Trigger"
local Q77148ClientConfig = require("Quest/Client/Q77148ClientConfig")

local this
local subIDs = Q77148ClientConfig.SubIDs
local datas = Q77148ClientConfig.Datas
local npcs = Q77148ClientConfig.Npcs
local points = Q77148ClientConfig.Points

function Q7714819Trigger:OnPostDataPrepare()
    print("Q7714819Trigger - OnPostDataPrepare")
    this = self
end

function Q7714819Trigger:OnPostComponentPrepare()
    print("Q7714819Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77148)
end

function Q7714819Trigger:TriggerIn()
    print("Q7714819Trigger - TriggerIn")
    actorMgr:GetActor("77148"):QuestNarratorTask(datas.NarratorWithId_97714819, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7714819})
        this:DestroySelf()
    end)
end

function Q7714819Trigger:PreTriggerIn()
    print("Q7714819Trigger - PreTriggerIn")
end

function Q7714819Trigger:LightUpTriggerIn()
    print("Q7714819Trigger - LightUpTriggerIn")
end

function Q7714819Trigger:TriggerOut()
    print("Q7714819Trigger - TriggerOut")
end

return Q7714819Trigger
