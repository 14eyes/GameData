require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7615201Trigger = class("Q7615201Trigger", GadgetActorProxy)
Q7615201Trigger.defaultAlias = "Q7615201Trigger"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q7615201Trigger:OnPostDataPrepare()
    print("Q7615201Trigger - OnPostDataPrepare")
    this = self
end

function Q7615201Trigger:OnPostComponentPrepare()
    print("Q7615201Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(14.4545, 11.162069, 35.47855, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q7615201Trigger:TriggerIn()
    print("Q7615201Trigger - TriggerIn")
    actorMgr:CreateActorWithPos("Q76152011Trigger", "Actor/Gadget/Q76152011Trigger", 70900002, 0, points._Q76152011TriggerPoint_.pos, points._Q76152011TriggerPoint_.rot, true, false, 103, nil, 0, 76152)
    this:DestroySelf()
    actorMgr:GetActor("76152"):GetQuestNpcActor(npcs.Npc22272.alias, 76152):WalkToTask({x = 128.96, y = 173.33, z = 416.74}, nil, nil, nil)
    actorMgr:GetActor("76152"):CallDelayByQuest("delayNPCwalk", 0.5, function(arg1)
        actorMgr:GetActor("76152"):GetQuestNpcActor(npcs.Npc22306.alias, 76152):WalkToTask({x = 128.882, y = 173, z = 417.268}, nil, nil, nil)
    end)
end

function Q7615201Trigger:PreTriggerIn()
    print("Q7615201Trigger - PreTriggerIn")
end

function Q7615201Trigger:LightUpTriggerIn()
    print("Q7615201Trigger - LightUpTriggerIn")
end

function Q7615201Trigger:TriggerOut()
    print("Q7615201Trigger - TriggerOut")
end

return Q7615201Trigger
