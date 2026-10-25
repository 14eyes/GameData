require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401804Triggerawaytips01 = class("Q401804Triggerawaytips01", GadgetActorProxy)
Q401804Triggerawaytips01.defaultAlias = "Q401804Triggerawaytips01"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401804Triggerawaytips01:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerawaytips01] OnPostDataPrepare")
    this = self
end

function Q401804Triggerawaytips01:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401804Triggerawaytips01] OnPostComponentPrepare")
    this:AddCubeShapeTrigger(26, 16, 7, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401804Triggerawaytips01:TriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerawaytips01] TriggerIn")
    actorMgr:GetActor("4018"):NarratorOnlyTaskByData(datas.NarratorWithIdawaytips)
end

function Q401804Triggerawaytips01:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerawaytips01] PreTriggerIn")
end

function Q401804Triggerawaytips01:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401804Triggerawaytips01] LightUpTriggerIn")
end

function Q401804Triggerawaytips01:TriggerOut()
    print("[MainId: 4018][Trigger: Q401804Triggerawaytips01] TriggerOut")
end

return Q401804Triggerawaytips01
