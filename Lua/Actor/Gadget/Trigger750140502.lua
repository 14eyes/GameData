require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger750140502 = class("Trigger750140502", GadgetActorProxy)
Trigger750140502.defaultAlias = "Trigger750140502"
local Q75014ClientConfig = require("Quest/Client/Q75014ClientConfig")

local this
local subIDs = Q75014ClientConfig.SubIDs
local datas = Q75014ClientConfig.Datas
local npcs = Q75014ClientConfig.Npcs
local points = Q75014ClientConfig.Points

function Trigger750140502:OnPostDataPrepare()
    print("Trigger750140502 - OnPostDataPrepare")
    this = self
end

function Trigger750140502:OnPostComponentPrepare()
    print("Trigger750140502 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75014)
end

function Trigger750140502:TriggerIn()
    print("Trigger750140502 - TriggerIn")
    actorUtils.FinishQuestID(false, 7501405)
    this:DestroySelf()
end

function Trigger750140502:PreTriggerIn()
    print("Trigger750140502 - PreTriggerIn")
end

function Trigger750140502:LightUpTriggerIn()
    print("Trigger750140502 - LightUpTriggerIn")
end

function Trigger750140502:TriggerOut()
    print("Trigger750140502 - TriggerOut")
end

return Trigger750140502
