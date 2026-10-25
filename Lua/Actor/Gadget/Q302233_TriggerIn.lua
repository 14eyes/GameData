require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302233_TriggerIn = class("Q302233_TriggerIn", GadgetActorProxy)
Q302233_TriggerIn.defaultAlias = "Q302233_TriggerIn"
local Q3022ClientConfig = require("Quest/Client/Q3022ClientConfig")

local subIDs = Q3022ClientConfig.SubIDs
local npcs = Q3022ClientConfig.Npcs
local gadgets = Q3022ClientConfig.Gadgets
local datas = Q3022ClientConfig.Datas

function Q302233_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q302233_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(100, 120, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302233_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3022"):TransmitPlayerWithDialogTextByQuestId(302233, 1, nil, 0, nil, function(arg1)
        actorMgr:GetActor("3022"):ShowBlackScreenWithDialogText(0.5, 2, 0, function(arg1)
            actorUtils.FinishQuestID(false, 302233)
        end, nil, nil, 0, false, true)
    end)

    self:DestroySelf()
end

function Q302233_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302233_TriggerIn
