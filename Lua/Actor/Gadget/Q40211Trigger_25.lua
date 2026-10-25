require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40211Trigger_25 = class("Q40211Trigger_25", GadgetActorProxy)
Q40211Trigger_25.defaultAlias = "Q40211Trigger_25"
local Q40211ClientConfig = require("Quest/Client/Q40211ClientConfig")

local this
local subIDs = Q40211ClientConfig.SubIDs
local datas = Q40211ClientConfig.Datas
local npcs = Q40211ClientConfig.Npcs
local points = Q40211ClientConfig.Points

function Q40211Trigger_25:OnPostDataPrepare()
    print("Q40211Trigger_25 - OnPostDataPrepare")
    this = self
end

function Q40211Trigger_25:OnPostComponentPrepare()
    print("Q40211Trigger_25 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 26, 15, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40211)
end

function Q40211Trigger_25:TriggerIn()
    print("Q40211Trigger_25 - TriggerIn")
    actorMgr:GetActor("40211"):RequestInteraction(npcs.Npc1053.alias, "", true)
    this:DestroySelf()
end

function Q40211Trigger_25:PreTriggerIn()
    print("Q40211Trigger_25 - PreTriggerIn")
end

function Q40211Trigger_25:LightUpTriggerIn()
    print("Q40211Trigger_25 - LightUpTriggerIn")
end

function Q40211Trigger_25:TriggerOut()
    print("Q40211Trigger_25 - TriggerOut")
end

return Q40211Trigger_25
