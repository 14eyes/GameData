require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_750140503 = class("Trigger_750140503", GadgetActorProxy)
Trigger_750140503.defaultAlias = "Trigger_750140503"
local Q75014ClientConfig = require("Quest/Client/Q75014ClientConfig")

local this
local subIDs = Q75014ClientConfig.SubIDs
local datas = Q75014ClientConfig.Datas
local npcs = Q75014ClientConfig.Npcs
local points = Q75014ClientConfig.Points

function Trigger_750140503:OnPostDataPrepare()
    print("Trigger_750140503 - OnPostDataPrepare")
    this = self
end

function Trigger_750140503:OnPostComponentPrepare()
    print("Trigger_750140503 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75014)
end

function Trigger_750140503:TriggerIn()
    print("Trigger_750140503 - TriggerIn")
    actorUtils.FinishQuestID(false, 7501405)
    this:DestroySelf()
end

function Trigger_750140503:PreTriggerIn()
    print("Trigger_750140503 - PreTriggerIn")
end

function Trigger_750140503:LightUpTriggerIn()
    print("Trigger_750140503 - LightUpTriggerIn")
end

function Trigger_750140503:TriggerOut()
    print("Trigger_750140503 - TriggerOut")
end

return Trigger_750140503
