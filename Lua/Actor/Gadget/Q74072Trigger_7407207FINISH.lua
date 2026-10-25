require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74072Trigger_7407207FINISH = class("Q74072Trigger_7407207FINISH", GadgetActorProxy)
Q74072Trigger_7407207FINISH.defaultAlias = "Q74072Trigger_7407207FINISH"
local Q74072ClientConfig = require("Quest/Client/Q74072ClientConfig")

local this
local subIDs = Q74072ClientConfig.SubIDs
local npcs = Q74072ClientConfig.Npcs
local points = Q74072ClientConfig.Points
local datas = Q74072ClientConfig.Datas

function Q74072Trigger_7407207FINISH:OnPostDataPrepare()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407207FINISH] OnPostDataPrepare")
    this = self
end

function Q74072Trigger_7407207FINISH:OnPostComponentPrepare()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407207FINISH] OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74072Trigger_7407207FINISH:TriggerIn()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407207FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407207)
    this:DestroySelf()
end

function Q74072Trigger_7407207FINISH:PreTriggerIn()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407207FINISH] PreTriggerIn")
end

function Q74072Trigger_7407207FINISH:LightUpTriggerIn()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407207FINISH] LightUpTriggerIn")
end

function Q74072Trigger_7407207FINISH:TriggerOut()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407207FINISH] TriggerOut")
end

return Q74072Trigger_7407207FINISH
