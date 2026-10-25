require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006510Trigger = class("Q7006510Trigger", GadgetActorProxy)
Q7006510Trigger.defaultAlias = "Q7006510Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006510Trigger:OnPostDataPrepare()
    print("Q7006510Trigger - OnPostDataPrepare")
    this = self
end

function Q7006510Trigger:OnPostComponentPrepare()
    print("Q7006510Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10.347973, 21.03341, 10.455951, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006510Trigger:TriggerIn()
    print("Q7006510Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7006510)
    this:DestroySelf()
end

function Q7006510Trigger:PreTriggerIn()
    print("Q7006510Trigger - PreTriggerIn")
end

function Q7006510Trigger:LightUpTriggerIn()
    print("Q7006510Trigger - LightUpTriggerIn")
end

function Q7006510Trigger:TriggerOut()
    print("Q7006510Trigger - TriggerOut")
end

return Q7006510Trigger
