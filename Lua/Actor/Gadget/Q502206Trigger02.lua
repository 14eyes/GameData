require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502206Trigger02 = class("Q502206Trigger02", GadgetActorProxy)
Q502206Trigger02.defaultAlias = "Q502206Trigger02"
local Q5022ClientConfig = require("Quest/Client/Q5022ClientConfig")

local this
local subIDs = Q5022ClientConfig.SubIDs
local datas = Q5022ClientConfig.Datas
local npcs = Q5022ClientConfig.Npcs
local points = Q5022ClientConfig.Points

function Q502206Trigger02:OnPostDataPrepare()
    print("Q502206Trigger02 - OnPostDataPrepare")
    this = self
end

function Q502206Trigger02:OnPostComponentPrepare()
    print("Q502206Trigger02 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 200, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5022)
end

function Q502206Trigger02:TriggerIn()
    print("Q502206Trigger02 - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("5022"):QuestNarratorTask(datas.NarratorWithId50220602, nil)
end

function Q502206Trigger02:PreTriggerIn()
    print("Q502206Trigger02 - PreTriggerIn")
end

function Q502206Trigger02:LightUpTriggerIn()
    print("Q502206Trigger02 - LightUpTriggerIn")
end

function Q502206Trigger02:TriggerOut()
    print("Q502206Trigger02 - TriggerOut")
end

return Q502206Trigger02
