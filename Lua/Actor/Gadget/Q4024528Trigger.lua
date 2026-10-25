require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024528Trigger = class("Q4024528Trigger", GadgetActorProxy)
Q4024528Trigger.defaultAlias = "Q4024528Trigger"
local Q40245ClientConfig = require("Quest/Client/Q40245ClientConfig")

local this
local subIDs = Q40245ClientConfig.SubIDs
local datas = Q40245ClientConfig.Datas
local npcs = Q40245ClientConfig.Npcs
local points = Q40245ClientConfig.Points

function Q4024528Trigger:OnPostDataPrepare()
    print("Q4024528Trigger - OnPostDataPrepare")
    this = self
end

function Q4024528Trigger:OnPostComponentPrepare()
    print("Q4024528Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40245)
end

function Q4024528Trigger:TriggerIn()
    print("Q4024528Trigger - TriggerIn")
end

function Q4024528Trigger:PreTriggerIn()
    print("Q4024528Trigger - PreTriggerIn")
end

function Q4024528Trigger:LightUpTriggerIn()
    print("Q4024528Trigger - LightUpTriggerIn")
end

function Q4024528Trigger:TriggerOut()
    print("Q4024528Trigger - TriggerOut")
    actorMgr:GetActor("40245"):SafeDestroyQuestNpc(npcs.Npc1336.alias, 1161)
    this:DestroySelf()
end

return Q4024528Trigger
