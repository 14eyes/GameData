require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022010_TriggerIn = class("Q4022010_TriggerIn", GadgetActorProxy)
Q4022010_TriggerIn.defaultAlias = "Q4022010_TriggerIn"
local Q40220ClientConfig = require("Quest/Client/Q40220ClientConfig")

local this
local subIDs = Q40220ClientConfig.SubIDs
local datas = Q40220ClientConfig.Datas
local npcs = Q40220ClientConfig.Npcs
local points = Q40220ClientConfig.Points

function Q4022010_TriggerIn:OnPostDataPrepare()
    print("Q4022010_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q4022010_TriggerIn:OnPostComponentPrepare()
    print("Q4022010_TriggerIn - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 40, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40220)
end

function Q4022010_TriggerIn:TriggerIn()
    print("Q4022010_TriggerIn - TriggerIn")
    actorMgr:GetActor("40220"):TransmitPlayerByQuestId(4022010, 1, nil, nil, nil)
end

function Q4022010_TriggerIn:PreTriggerIn()
    print("Q4022010_TriggerIn - PreTriggerIn")
end

function Q4022010_TriggerIn:LightUpTriggerIn()
    print("Q4022010_TriggerIn - LightUpTriggerIn")
end

function Q4022010_TriggerIn:TriggerOut()
    print("Q4022010_TriggerIn - TriggerOut")
end

return Q4022010_TriggerIn
