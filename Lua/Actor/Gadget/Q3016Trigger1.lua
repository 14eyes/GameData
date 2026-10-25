require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3016Trigger1 = class("Q3016Trigger1", GadgetActorProxy)
Q3016Trigger1.defaultAlias = "Q3016Trigger1"
local Q3016ClientConfig = require("Quest/Client/Q3016ClientConfig")

local this
local subIDs = Q3016ClientConfig.SubIDs
local npcs = Q3016ClientConfig.Npcs
local datas = Q3016ClientConfig.Datas

function Q3016Trigger1:OnPostDataPrepare()
    print("[MainId: 3016][Trigger: Q3016Trigger1] OnPostDataPrepare")
    this = self
end

function Q3016Trigger1:OnPostComponentPrepare()
    print("[MainId: 3016][Trigger: Q3016Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q3016Trigger1:TriggerIn()
    print("[MainId: 3016][Trigger: Q3016Trigger1] TriggerIn")
    actorMgr:GetActor("3016"):RequestInteraction(npcs.Npc12659Data.alias)
    this:DestroySelf()
end

function Q3016Trigger1:TriggerOut()
    print("[MainId: 3016][Trigger: Q3016Trigger1] TriggerOut")
end

return Q3016Trigger1
