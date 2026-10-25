require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74500Trigger2 = class("Q74500Trigger2", GadgetActorProxy)
Q74500Trigger2.defaultAlias = "Q74500Trigger2"
local Q74500ClientConfig = require("Quest/Client/Q74500ClientConfig")

local this
local subIDs = Q74500ClientConfig.SubIDs
local npcs = Q74500ClientConfig.Npcs
local points = Q74500ClientConfig.Points
local datas = Q74500ClientConfig.Datas

function Q74500Trigger2:OnPostDataPrepare()
    print("[MainId: 74500][Trigger: Q74500Trigger2] OnPostDataPrepare")
    this = self
end

function Q74500Trigger2:OnPostComponentPrepare()
    print("[MainId: 74500][Trigger: Q74500Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74500Trigger2:TriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger2] TriggerIn")
    actorMgr:GetActor("74500"):RequestInteraction(npcs.Npc30411Data.alias)
    this:DestroySelf()
end

function Q74500Trigger2:PreTriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger2] PreTriggerIn")
end

function Q74500Trigger2:LightUpTriggerIn()
    print("[MainId: 74500][Trigger: Q74500Trigger2] LightUpTriggerIn")
end

function Q74500Trigger2:TriggerOut()
    print("[MainId: 74500][Trigger: Q74500Trigger2] TriggerOut")
end

return Q74500Trigger2
