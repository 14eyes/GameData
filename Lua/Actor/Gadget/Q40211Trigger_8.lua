require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_8 = class("Q40211Trigger_8", GadgetActorProxy)
Q40211Trigger_8.defaultAlias = "Q40211Trigger_8"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_8:OnPostDataPrepare()
    print("Q40211Trigger_8 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_8:OnPostComponentPrepare()
    print("Q40211Trigger_8 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_8:TriggerIn()
    print("Q40211Trigger_8 - TriggerIn")
    actorMgr:GetActor("40211"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("40211"):RequestInteraction(npcs.Npc13197.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40211Trigger_8:PreTriggerIn()
    print("Q40211Trigger_8 - PreTriggerIn")
end

function Q40211Trigger_8:LightUpTriggerIn()
    print("Q40211Trigger_8 - LightUpTriggerIn")
end

function Q40211Trigger_8:TriggerOut()
    print("Q40211Trigger_8 - TriggerOut")
end

return Q40211Trigger_8
