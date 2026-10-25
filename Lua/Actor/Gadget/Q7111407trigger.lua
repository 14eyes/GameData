require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111407trigger = class("Q7111407trigger", GadgetActorProxy)
Q7111407trigger.defaultAlias = "Q7111407trigger"
local Q71114ClientConfig = require("Quest/Client/Q71114ClientConfig")

local this
local subIDs = Q71114ClientConfig.SubIDs
local datas = Q71114ClientConfig.Datas
local npcs = Q71114ClientConfig.Npcs
local points = Q71114ClientConfig.Points

function Q7111407trigger:OnPostDataPrepare()
    print("Q7111407trigger - OnPostDataPrepare")
    this = self
end

function Q7111407trigger:OnPostComponentPrepare()
    print("Q7111407trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71114)
end

function Q7111407trigger:TriggerIn()
    print("Q7111407trigger - TriggerIn")
    local actor = actorMgr:GetActor("71114")
    this:EnterSceneLookCamera({x = 2352.474, y = 376.998, z = 2091.197}, 0, 3, true, false)
    this:EnablePlayerInput(false)
    actor.CallDelay(actor, 3, function(arg1)
        actor:EnablePlayerInput(true)
        print("\230\129\162\229\164\141\232\161\140\228\184\186")
    end)

    this:DestroySelf()
end

function Q7111407trigger:PreTriggerIn()
    print("Q7111407trigger - PreTriggerIn")
end

function Q7111407trigger:LightUpTriggerIn()
    print("Q7111407trigger - LightUpTriggerIn")
end

function Q7111407trigger:TriggerOut()
    print("Q7111407trigger - TriggerOut")
end

return Q7111407trigger
