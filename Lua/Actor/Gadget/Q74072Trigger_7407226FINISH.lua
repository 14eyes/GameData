require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74072Trigger_7407226FINISH = class("Q74072Trigger_7407226FINISH", GadgetActorProxy)
Q74072Trigger_7407226FINISH.defaultAlias = "Q74072Trigger_7407226FINISH"
local Q74072ClientConfig = require("Quest/Client/Q74072ClientConfig")

local this
local subIDs = Q74072ClientConfig.SubIDs
local npcs = Q74072ClientConfig.Npcs
local points = Q74072ClientConfig.Points
local datas = Q74072ClientConfig.Datas

function Q74072Trigger_7407226FINISH:OnPostDataPrepare()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407226FINISH] OnPostDataPrepare")
    this = self
end

function Q74072Trigger_7407226FINISH:OnPostComponentPrepare()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407226FINISH] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 3, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74072Trigger_7407226FINISH:TriggerIn()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407226FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407226)
    this:DestroySelf()
end

function Q74072Trigger_7407226FINISH:PreTriggerIn()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407226FINISH] PreTriggerIn")
end

function Q74072Trigger_7407226FINISH:LightUpTriggerIn()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407226FINISH] LightUpTriggerIn")
end

function Q74072Trigger_7407226FINISH:TriggerOut()
    print("[MainId: 74072][Trigger: Q74072Trigger_7407226FINISH] TriggerOut")
end

return Q74072Trigger_7407226FINISH
