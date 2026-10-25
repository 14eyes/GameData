require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_15 = class("Q40211Trigger_15", GadgetActorProxy)
Q40211Trigger_15.defaultAlias = "Q40211Trigger_15"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_15:OnPostDataPrepare()
    print("Q40211Trigger_15 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_15:OnPostComponentPrepare()
    print("Q40211Trigger_15 - OnPostComponentPrepare")
    this:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_15:TriggerIn()
    print("Q40211Trigger_15 - TriggerIn")
    actorMgr:GetActor("40211"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("40211"):RequestInteraction(npcs.Npc13992.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40211Trigger_15:PreTriggerIn()
    print("Q40211Trigger_15 - PreTriggerIn")
end

function Q40211Trigger_15:LightUpTriggerIn()
    print("Q40211Trigger_15 - LightUpTriggerIn")
    actorMgr:GetActor("40211"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q40211Trigger_15:TriggerOut()
    print("Q40211Trigger_15 - TriggerOut")
end

return Q40211Trigger_15
