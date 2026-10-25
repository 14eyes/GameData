require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40210Trigger_6 = class("Q40210Trigger_6", GadgetActorProxy)
Q40210Trigger_6.defaultAlias = "Q40210Trigger_6"
local Q40210ClientConfig = require("Quest/Client/Q40210ClientConfig")

local this
local subIDs = Q40210ClientConfig.SubIDs
local datas = Q40210ClientConfig.Datas
local npcs = Q40210ClientConfig.Npcs
local points = Q40210ClientConfig.Points

function Q40210Trigger_6:OnPostDataPrepare()
    print("Q40210Trigger_6 - OnPostDataPrepare")
    this = self
end

function Q40210Trigger_6:OnPostComponentPrepare()
    print("Q40210Trigger_6 - OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40210)
end

function Q40210Trigger_6:TriggerIn()
    print("Q40210Trigger_6 - TriggerIn")
    actorMgr:GetActor("40210"):RequestInteraction(npcs.Npc1063.alias, "", true)
    this:DestroySelf()
end

function Q40210Trigger_6:PreTriggerIn()
    print("Q40210Trigger_6 - PreTriggerIn")
end

function Q40210Trigger_6:LightUpTriggerIn()
    print("Q40210Trigger_6 - LightUpTriggerIn")
end

function Q40210Trigger_6:TriggerOut()
    print("Q40210Trigger_6 - TriggerOut")
end

return Q40210Trigger_6
