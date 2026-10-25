require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502206Trigger3 = class("Q502206Trigger3", GadgetActorProxy)
Q502206Trigger3.defaultAlias = "Q502206Trigger3"
local Q5022ClientConfig = require("Quest/Client/Q5022ClientConfig")

local this
local subIDs = Q5022ClientConfig.SubIDs
local datas = Q5022ClientConfig.Datas
local npcs = Q5022ClientConfig.Npcs
local points = Q5022ClientConfig.Points

function Q502206Trigger3:OnPostDataPrepare()
    print("Q502206Trigger3 - OnPostDataPrepare")
    this = self
end

function Q502206Trigger3:OnPostComponentPrepare()
    print("Q502206Trigger3 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 200, 100, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5022)
end

function Q502206Trigger3:TriggerIn()
    print("Q502206Trigger3 - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("5022"):QuestNarratorTask(datas.NarratorWithId50220603, nil)
end

function Q502206Trigger3:PreTriggerIn()
    print("Q502206Trigger3 - PreTriggerIn")
end

function Q502206Trigger3:LightUpTriggerIn()
    print("Q502206Trigger3 - LightUpTriggerIn")
end

function Q502206Trigger3:TriggerOut()
    print("Q502206Trigger3 - TriggerOut")
end

return Q502206Trigger3
