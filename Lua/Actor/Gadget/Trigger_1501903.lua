require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger_1501903 = class("Trigger_1501903", GadgetActorProxy)
Trigger_1501903.defaultAlias = "Trigger_1501903"
local Q15019ClientConfig = require("Quest/Client/Q15019ClientConfig")

local this
local subIDs = Q15019ClientConfig.SubIDs
local datas = Q15019ClientConfig.Datas
local npcs = Q15019ClientConfig.Npcs
local points = Q15019ClientConfig.Points

function Trigger_1501903:OnPostDataPrepare()
    print("Trigger_1501903 - OnPostDataPrepare")
    this = self
end

function Trigger_1501903:OnPostComponentPrepare()
    print("Trigger_1501903 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(9.238712, 8.173102, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15019)
end

function Trigger_1501903:TriggerIn()
    print("Trigger_1501903 - TriggerIn")
    actorMgr:GetActor("15019"):RequestInteraction(npcs.Npc21647.alias, "", true)
end

function Trigger_1501903:PreTriggerIn()
    print("Trigger_1501903 - PreTriggerIn")
end

function Trigger_1501903:LightUpTriggerIn()
    print("Trigger_1501903 - LightUpTriggerIn")
end

function Trigger_1501903:TriggerOut()
    print("Trigger_1501903 - TriggerOut")
end

return Trigger_1501903
