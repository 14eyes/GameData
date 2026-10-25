require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74078Trigger_7407823FINISH = class("Q74078Trigger_7407823FINISH", GadgetActorProxy)
Q74078Trigger_7407823FINISH.defaultAlias = "Q74078Trigger_7407823FINISH"
local Q74078ClientConfig = require("Quest/Client/Q74078ClientConfig")

local this
local subIDs = Q74078ClientConfig.SubIDs
local npcs = Q74078ClientConfig.Npcs
local datas = Q74078ClientConfig.Datas

function Q74078Trigger_7407823FINISH:OnPostDataPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407823FINISH] OnPostDataPrepare")
    this = self
end

function Q74078Trigger_7407823FINISH:OnPostComponentPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407823FINISH] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74078Trigger_7407823FINISH:TriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407823FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407823)
    this:DestroySelf()
end

function Q74078Trigger_7407823FINISH:PreTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407823FINISH] PreTriggerIn")
end

function Q74078Trigger_7407823FINISH:LightUpTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407823FINISH] LightUpTriggerIn")
end

function Q74078Trigger_7407823FINISH:TriggerOut()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407823FINISH] TriggerOut")
end

return Q74078Trigger_7407823FINISH
