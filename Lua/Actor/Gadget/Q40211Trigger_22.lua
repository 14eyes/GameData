require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_22 = class("Q40211Trigger_22", GadgetActorProxy)
Q40211Trigger_22.defaultAlias = "Q40211Trigger_22"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_22:OnPostDataPrepare()
    print("Q40211Trigger_22 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_22:OnPostComponentPrepare()
    print("Q40211Trigger_22 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_22:TriggerIn()
    print("Q40211Trigger_22 - TriggerIn")
    actorMgr:GetActor("40211"):ShowBlackScreenWithDialogText(0, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 4021144)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q40211Trigger_22:PreTriggerIn()
    print("Q40211Trigger_22 - PreTriggerIn")
end

function Q40211Trigger_22:LightUpTriggerIn()
    print("Q40211Trigger_22 - LightUpTriggerIn")
    actorMgr:GetActor("40211"):ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Q40211Trigger_22:TriggerOut()
    print("Q40211Trigger_22 - TriggerOut")
end

return Q40211Trigger_22
