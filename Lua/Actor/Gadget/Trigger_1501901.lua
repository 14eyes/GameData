require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_1501901 = class("Trigger_1501901", GadgetActorProxy)
Trigger_1501901.defaultAlias = "Trigger_1501901"
local Q15019ClientConfig = require("Quest/Client/Q15019ClientConfig")

local this
local subIDs = Q15019ClientConfig.SubIDs
local datas = Q15019ClientConfig.Datas
local npcs = Q15019ClientConfig.Npcs
local points = Q15019ClientConfig.Points

function Trigger_1501901:OnPostDataPrepare()
    print("Trigger_1501901 - OnPostDataPrepare")
    this = self
end

function Trigger_1501901:OnPostComponentPrepare()
    print("Trigger_1501901 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(7.9514217, 21.570627, 3.380556, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15019)
end

function Trigger_1501901:TriggerIn()
    print("Trigger_1501901 - TriggerIn")
    actorMgr:GetActor("15019"):RequestInteraction(npcs.Npc21647.alias, "", true)
    this:DestroySelf()
end

function Trigger_1501901:PreTriggerIn()
    print("Trigger_1501901 - PreTriggerIn")
end

function Trigger_1501901:LightUpTriggerIn()
    print("Trigger_1501901 - LightUpTriggerIn")
end

function Trigger_1501901:TriggerOut()
    print("Trigger_1501901 - TriggerOut")
end

return Trigger_1501901
