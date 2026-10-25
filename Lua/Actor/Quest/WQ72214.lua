require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72214 = class("Quest72214", QuestActorProxy)
Quest72214.defaultAlias = "Quest72214"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72214:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72214:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7221401"] = self.OnSubStart7221401,
        ["7221402"] = self.OnSubStart7221402,
        ["7221404"] = self.OnSubStart7221404,
        ["7221403"] = self.OnSubStart7221403
    }
end

function Quest72214:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7221401"] = self.OnSubFinish7221401,
        ["7221402"] = self.OnSubFinish7221402,
        ["7221404"] = self.OnSubFinish7221404,
        ["7221403"] = self.OnSubFinish7221403
    }
end

function Quest72214:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7221401"] = self.OnSubFailed7221401,
        ["7221402"] = self.OnSubFailed7221402,
        ["7221404"] = self.OnSubFailed7221404,
        ["7221403"] = self.OnSubFailed7221403
    }
end

function Quest72214:Start()
    print("Start")
end

function Quest72214:OnDestroy()
    print("OnDestroy")
end

function Quest72214:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72214:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72214:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72214:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72214:OnSubStart7221401(arg1)
    print("OnSubStart7221401")
    self:CreateQuestNpc(arg1, npcs.Npc3182Data.id, 1)
end

function Quest72214:OnSubFinish7221401(arg1)
    print("OnSubFinish7221401")
end

function Quest72214:OnSubFailed7221401(arg1)
    print("OnSubFailed7221401")
end

function Quest72214:OnSubStart7221402(arg1)
    print("OnSubStart7221402")
end

function Quest72214:OnSubFinish7221402(arg1)
    print("OnSubFinish7221402")
end

function Quest72214:OnSubFailed7221402(arg1)
    print("OnSubFailed7221402")
end

function Quest72214:OnSubStart7221404(arg1)
    print("OnSubStart7221404")
end

function Quest72214:OnSubFinish7221404(arg1)
    print("OnSubFinish7221404")
end

function Quest72214:OnSubFailed7221404(arg1)
    print("OnSubFailed7221404")
end

function Quest72214:OnSubStart7221403(arg1)
    print("OnSubStart7221403")
end

function Quest72214:OnSubFinish7221403(arg1)
    print("OnSubFinish7221403")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3182Data.alias)
end

function Quest72214:OnSubFailed7221403(arg1)
    print("OnSubFailed7221403")
end

return Quest72214
