require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74078Trigger_7407815FINISH = class("Q74078Trigger_7407815FINISH", GadgetActorProxy)
Q74078Trigger_7407815FINISH.defaultAlias = "Q74078Trigger_7407815FINISH"
local Q74078ClientConfig = require("Quest/Client/Q74078ClientConfig")

local this
local subIDs = Q74078ClientConfig.SubIDs
local npcs = Q74078ClientConfig.Npcs
local datas = Q74078ClientConfig.Datas

function Q74078Trigger_7407815FINISH:OnPostDataPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407815FINISH] OnPostDataPrepare")
    this = self
end

function Q74078Trigger_7407815FINISH:OnPostComponentPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407815FINISH] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(15, 15, 20, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74078Trigger_7407815FINISH:TriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407815FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407815)
    this:DestroySelf()
end

function Q74078Trigger_7407815FINISH:PreTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407815FINISH] PreTriggerIn")
end

function Q74078Trigger_7407815FINISH:LightUpTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407815FINISH] LightUpTriggerIn")
end

function Q74078Trigger_7407815FINISH:TriggerOut()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407815FINISH] TriggerOut")
end

return Q74078Trigger_7407815FINISH
