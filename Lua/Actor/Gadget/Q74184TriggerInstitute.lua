require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74184TriggerInstitute = class("Q74184TriggerInstitute", GadgetActorProxy)
Q74184TriggerInstitute.defaultAlias = "Q74184TriggerInstitute"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q74184TriggerInstitute:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerInstitute] OnPostDataPrepare")
    this = self
end

function Q74184TriggerInstitute:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q74184TriggerInstitute] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 33.09257, 54.15687, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74184TriggerInstitute:TriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerInstitute] TriggerIn")
    actorUtils.FinishQuestID(false, 7418416)
    this:DestroySelf()
end

function Q74184TriggerInstitute:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerInstitute] PreTriggerIn")
end

function Q74184TriggerInstitute:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q74184TriggerInstitute] LightUpTriggerIn")
end

function Q74184TriggerInstitute:TriggerOut()
    print("[MainId: 74184][Trigger: Q74184TriggerInstitute] TriggerOut")
end

return Q74184TriggerInstitute
