require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40090Trigger3 = class("Q40090Trigger3", GadgetActorProxy)
Q40090Trigger3.defaultAlias = "Q40090Trigger3"
local Q40090ClientConfig = require("Quest/Client/Q40090ClientConfig")

local this
local subIDs = Q40090ClientConfig.SubIDs
local npcs = Q40090ClientConfig.Npcs
local datas = Q40090ClientConfig.Datas

function Q40090Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40090Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q40090Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40090"):RequestInteraction(npcs.Npc12944Data.alias)
    this:DestroySelf()
end

function Q40090Trigger3:PreTriggerIn()
    print("PreTriggerIn")
end

function Q40090Trigger3:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q40090Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q40090Trigger3
