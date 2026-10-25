require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7415607Triggerfail = class("Q7415607Triggerfail", GadgetActorProxy)
Q7415607Triggerfail.defaultAlias = "Q7415607Triggerfail"
local Q74156ClientConfig = require("Quest/Client/Q74156ClientConfig")

local this
local subIDs = Q74156ClientConfig.SubIDs
local npcs = Q74156ClientConfig.Npcs
local datas = Q74156ClientConfig.Datas

function Q7415607Triggerfail:OnPostDataPrepare()
    print("[MainId: 74156][Trigger: Q7415607Triggerfail] OnPostDataPrepare")
    this = self
end

function Q7415607Triggerfail:OnPostComponentPrepare()
    print("[MainId: 74156][Trigger: Q7415607Triggerfail] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(168.5766, 68.34537, 22.51698, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7415607Triggerfail:TriggerIn()
    print("[MainId: 74156][Trigger: Q7415607Triggerfail] TriggerIn")
end

function Q7415607Triggerfail:PreTriggerIn()
    print("[MainId: 74156][Trigger: Q7415607Triggerfail] PreTriggerIn")
end

function Q7415607Triggerfail:LightUpTriggerIn()
    print("[MainId: 74156][Trigger: Q7415607Triggerfail] LightUpTriggerIn")
end

function Q7415607Triggerfail:TriggerOut()
    print("[MainId: 74156][Trigger: Q7415607Triggerfail] TriggerOut")
    actorUtils.FinishQuestID(true, 7415607)
    this:DestroySelf()
end

return Q7415607Triggerfail
