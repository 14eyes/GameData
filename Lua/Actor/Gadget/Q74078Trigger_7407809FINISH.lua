require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74078Trigger_7407809FINISH = class("Q74078Trigger_7407809FINISH", GadgetActorProxy)
Q74078Trigger_7407809FINISH.defaultAlias = "Q74078Trigger_7407809FINISH"
local Q74078ClientConfig = require("Quest/Client/Q74078ClientConfig")

local this
local subIDs = Q74078ClientConfig.SubIDs
local npcs = Q74078ClientConfig.Npcs
local datas = Q74078ClientConfig.Datas

function Q74078Trigger_7407809FINISH:OnPostDataPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407809FINISH] OnPostDataPrepare")
    this = self
end

function Q74078Trigger_7407809FINISH:OnPostComponentPrepare()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407809FINISH] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q74078Trigger_7407809FINISH:TriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407809FINISH] TriggerIn")
    actorUtils.FinishQuestID(false, 7407809)
    this:DestroySelf()
end

function Q74078Trigger_7407809FINISH:PreTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407809FINISH] PreTriggerIn")
end

function Q74078Trigger_7407809FINISH:LightUpTriggerIn()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407809FINISH] LightUpTriggerIn")
end

function Q74078Trigger_7407809FINISH:TriggerOut()
    print("[MainId: 74078][Trigger: Q74078Trigger_7407809FINISH] TriggerOut")
end

return Q74078Trigger_7407809FINISH
