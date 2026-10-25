require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74011TriggerRUN3 = class("Q74011TriggerRUN3", GadgetActorProxy)
Q74011TriggerRUN3.defaultAlias = "Q74011TriggerRUN3"
local Q74011ClientConfig = require("Quest/Client/Q74011ClientConfig")

local this
local subIDs = Q74011ClientConfig.SubIDs
local npcs = Q74011ClientConfig.Npcs
local points = Q74011ClientConfig.Points
local datas = Q74011ClientConfig.Datas

function Q74011TriggerRUN3:OnPostDataPrepare()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN3] OnPostDataPrepare")
    this = self
end

function Q74011TriggerRUN3:OnPostComponentPrepare()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN3] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74011TriggerRUN3:TriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN3] TriggerIn")
    actorMgr:GetActor("74011"):GetQuestNpcActor(npcs.Npc5311Data.alias, 74011):DestroyWithDither(false, 2)
    this:DestroySelf()
end

function Q74011TriggerRUN3:PreTriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN3] PreTriggerIn")
end

function Q74011TriggerRUN3:LightUpTriggerIn()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN3] LightUpTriggerIn")
end

function Q74011TriggerRUN3:TriggerOut()
    print("[MainId: 74011][Trigger: Q74011TriggerRUN3] TriggerOut")
end

return Q74011TriggerRUN3
