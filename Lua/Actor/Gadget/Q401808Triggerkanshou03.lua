require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q401808Triggerkanshou03 = class("Q401808Triggerkanshou03", GadgetActorProxy)
Q401808Triggerkanshou03.defaultAlias = "Q401808Triggerkanshou03"
local Q4018ClientConfig = require("Quest/Client/Q4018ClientConfig")

local this
local subIDs = Q4018ClientConfig.SubIDs
local npcs = Q4018ClientConfig.Npcs
local points = Q4018ClientConfig.Points
local datas = Q4018ClientConfig.Datas

function Q401808Triggerkanshou03:OnPostDataPrepare()
    print("[MainId: 4018][Trigger: Q401808Triggerkanshou03] OnPostDataPrepare")
    this = self
end

function Q401808Triggerkanshou03:OnPostComponentPrepare()
    print("[MainId: 4018][Trigger: Q401808Triggerkanshou03] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q401808Triggerkanshou03:TriggerIn()
    print("[MainId: 4018][Trigger: Q401808Triggerkanshou03] TriggerIn")
    actorMgr:GetActor("4018"):RequestInteraction(npcs.Npc13694Data.alias, "", true)
end

function Q401808Triggerkanshou03:PreTriggerIn()
    print("[MainId: 4018][Trigger: Q401808Triggerkanshou03] PreTriggerIn")
end

function Q401808Triggerkanshou03:LightUpTriggerIn()
    print("[MainId: 4018][Trigger: Q401808Triggerkanshou03] LightUpTriggerIn")
end

function Q401808Triggerkanshou03:TriggerOut()
    print("[MainId: 4018][Trigger: Q401808Triggerkanshou03] TriggerOut")
end

return Q401808Triggerkanshou03
