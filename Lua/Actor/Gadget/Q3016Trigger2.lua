require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3016Trigger2 = class("Q3016Trigger2", GadgetActorProxy)
Q3016Trigger2.defaultAlias = "Q3016Trigger2"
local Q3016ClientConfig = require("Quest/Client/Q3016ClientConfig")

local this
local subIDs = Q3016ClientConfig.SubIDs
local npcs = Q3016ClientConfig.Npcs
local datas = Q3016ClientConfig.Datas

function Q3016Trigger2:OnPostDataPrepare()
    print("[MainId: 3016][Trigger: Q3016Trigger2] OnPostDataPrepare")
    this = self
end

function Q3016Trigger2:OnPostComponentPrepare()
    print("[MainId: 3016][Trigger: Q3016Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3016Trigger2:TriggerIn()
    print("[MainId: 3016][Trigger: Q3016Trigger2] TriggerIn")
    actorMgr:GetActor("3016"):RequestInteraction(npcs.Npc12659Data.alias)
    this:DestroySelf()
end

function Q3016Trigger2:TriggerOut()
    print("[MainId: 3016][Trigger: Q3016Trigger2] TriggerOut")
end

return Q3016Trigger2
