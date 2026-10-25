require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72118 = class("Quest72118", QuestActorProxy)
Quest72118.defaultAlias = "Quest72118"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72118:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72118:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211801"] = self.OnSubStart7211801,
        ["7211802"] = self.OnSubStart7211802,
        ["7211803"] = self.OnSubStart7211803,
        ["7211804"] = self.OnSubStart7211804,
        ["7211805"] = self.OnSubStart7211805,
        ["7211806"] = self.OnSubStart7211806,
        ["7211807"] = self.OnSubStart7211807,
        ["7211808"] = self.OnSubStart7211808,
        ["7211809"] = self.OnSubStart7211809
    }
end

function Quest72118:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211801"] = self.OnSubFinish7211801,
        ["7211802"] = self.OnSubFinish7211802,
        ["7211803"] = self.OnSubFinish7211803,
        ["7211804"] = self.OnSubFinish7211804,
        ["7211805"] = self.OnSubFinish7211805,
        ["7211806"] = self.OnSubFinish7211806,
        ["7211807"] = self.OnSubFinish7211807,
        ["7211808"] = self.OnSubFinish7211808,
        ["7211809"] = self.OnSubFinish7211809
    }
end

function Quest72118:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211801"] = self.OnSubFailed7211801,
        ["7211802"] = self.OnSubFailed7211802,
        ["7211803"] = self.OnSubFailed7211803,
        ["7211804"] = self.OnSubFailed7211804,
        ["7211805"] = self.OnSubFailed7211805,
        ["7211806"] = self.OnSubFailed7211806,
        ["7211807"] = self.OnSubFailed7211807,
        ["7211808"] = self.OnSubFailed7211808,
        ["7211809"] = self.OnSubFailed7211809
    }
end

function Quest72118:Start()
    print("Start")
end

function Quest72118:OnDestroy()
    print("OnDestroy")
end

function Quest72118:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72118:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72118:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72118:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72118:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72118:OnSubStart7211801(arg1)
    print("OnSubStart7211801")
end

function Quest72118:OnSubFinish7211801(arg1)
    print("OnSubFinish7211801")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72118:OnSubFailed7211801(arg1)
    print("OnSubFailed7211801")
end

function Quest72118:OnSubStart7211802(arg1)
    print("OnSubStart7211802")
    self:CallDelay(0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72118:OnSubFinish7211802(arg1)
    print("OnSubFinish7211802")
end

function Quest72118:OnSubFailed7211802(arg1)
    print("OnSubFailed7211802")
end

function Quest72118:OnSubStart7211803(arg1)
    print("OnSubStart7211803")
end

function Quest72118:OnSubFinish7211803(arg1)
    print("OnSubFinish7211803")
end

function Quest72118:OnSubFailed7211803(arg1)
    print("OnSubFailed7211803")
end

function Quest72118:OnSubStart7211804(arg1)
    print("OnSubStart7211804")
end

function Quest72118:OnSubFinish7211804(arg1)
    print("OnSubFinish7211804")
end

function Quest72118:OnSubFailed7211804(arg1)
    print("OnSubFailed7211804")
end

function Quest72118:OnSubStart7211805(arg1)
    print("OnSubStart7211805")
end

function Quest72118:OnSubFinish7211805(arg1)
    print("OnSubFinish7211805")
end

function Quest72118:OnSubFailed7211805(arg1)
    print("OnSubFailed7211805")
end

function Quest72118:OnSubStart7211806(arg1)
    print("OnSubStart7211806")
end

function Quest72118:OnSubFinish7211806(arg1)
    print("OnSubFinish7211806")
end

function Quest72118:OnSubFailed7211806(arg1)
    print("OnSubFailed7211806")
end

function Quest72118:OnSubStart7211807(arg1)
    print("OnSubStart7211807")
end

function Quest72118:OnSubFinish7211807(arg1)
    print("OnSubFinish7211807")
end

function Quest72118:OnSubFailed7211807(arg1)
    print("OnSubFailed7211807")
end

function Quest72118:OnSubStart7211808(arg1)
    print("OnSubStart7211808")
end

function Quest72118:OnSubFinish7211808(arg1)
    print("OnSubFinish7211808")
end

function Quest72118:OnSubFailed7211808(arg1)
    print("OnSubFailed7211808")
end

function Quest72118:OnSubStart7211809(arg1)
    print("OnSubStart7211809")
end

function Quest72118:OnSubFinish7211809(arg1)
    print("OnSubFinish7211809")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3162Data.alias)
end

function Quest72118:OnSubFailed7211809(arg1)
    print("OnSubFailed7211809")
end

return Quest72118
