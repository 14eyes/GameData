require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40210Trigger_4 = class("Q40210Trigger_4", GadgetActorProxy)
Q40210Trigger_4.defaultAlias = "Q40210Trigger_4"
local Q40210ClientConfig = require("Quest/Client/Q40210ClientConfig")

local this
local subIDs = Q40210ClientConfig.SubIDs
local datas = Q40210ClientConfig.Datas
local npcs = Q40210ClientConfig.Npcs
local points = Q40210ClientConfig.Points

function Q40210Trigger_4:OnPostDataPrepare()
    print("Q40210Trigger_4 - OnPostDataPrepare")
    this = self
end

function Q40210Trigger_4:OnPostComponentPrepare()
    print("Q40210Trigger_4 - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(21, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40210)
end

function Q40210Trigger_4:TriggerIn()
    print("Q40210Trigger_4 - TriggerIn")
    actorMgr:GetActor("40210"):RequestInteraction(npcs.Npc1051.alias, "", true)
    this:DestroySelf()
end

function Q40210Trigger_4:PreTriggerIn()
    print("Q40210Trigger_4 - PreTriggerIn")
end

function Q40210Trigger_4:LightUpTriggerIn()
    print("Q40210Trigger_4 - LightUpTriggerIn")
end

function Q40210Trigger_4:TriggerOut()
    print("Q40210Trigger_4 - TriggerOut")
end

return Q40210Trigger_4
