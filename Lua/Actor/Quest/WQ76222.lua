require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76222 = class("Quest76222", QuestActorProxy)
Quest76222.defaultAlias = "Quest76222"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76222:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76222:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7622201"] = self.OnSubStart7622201,
        ["7622202"] = self.OnSubStart7622202,
        ["7622203"] = self.OnSubStart7622203
    }
end

function Quest76222:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7622201"] = self.OnSubFinish7622201,
        ["7622202"] = self.OnSubFinish7622202,
        ["7622203"] = self.OnSubFinish7622203
    }
end

function Quest76222:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7622202"] = self.OnSubFailed7622202}
end

function Quest76222:Start()
    print("Start")
end

function Quest76222:OnDestroy()
    print("OnDestroy")
end

function Quest76222:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76222:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76222:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7622203N1316Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1316.alias, 1205)
    this:RemoveLocalGadget(70711275, "2")
    this:RemoveLocalGadget(70711275, "10")
    this:RemoveLocalGadget(73177041, "1")
    this:RemoveLocalGadget(73177012, "0")
    this:RemoveLocalGadget(73177013, "3")
    this:RemoveLocalGadget(73177013, "1")
    this:RecycleAllRes()
end

function Quest76222:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76222:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7622201 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7622202 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest76222:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest76222:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76222:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76222:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = -7.5, y = 0.3, z = -54.1}, 30, 73177007, 10000133, 7622202) then
        actorUtils.FinishQuestWithParam({false}, {7622202})
    else
        if this:GetSubQuestState(7622202) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76222:OnSubStart7622201(arg1)
    print("OnSubStart7622201")
end

function Quest76222:OnSubFinish7622201(arg1)
    print("OnSubFinish7622201")
end

function Quest76222:OnSubStart7622202(arg1)
    print("OnSubStart7622202")
    this:RepeatSitCheck()
end

function Quest76222:OnSubFinish7622202(arg1)
    print("OnSubFinish7622202")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest76222:OnSubFailed7622202(arg1)
    print("OnSubFailed7622202")
    this:RecycleAllRes()
end

function Quest76222:OnSubStart7622203(arg1)
    print("OnSubStart7622203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7622203, 0, 40, 0.5, npcs.Npc1316.id)
    this:CreateLocalGadget(70711275, "2", {x = -6.633, y = 1.035, z = -49.657}, {x = 0, y = 345.59, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(70711275, "10", {x = -6.796, y = 1.035, z = -48.826}, {x = 0, y = 345.59, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177041, "1", {x = -7.723, y = 1.044, z = -49.265}, {x = 0, y = 85.981, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "0", {x = -7.35, y = 1.039, z = -49.495}, {x = 0, y = 333.853, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "3", {x = -6.861, y = 1.039, z = -49.689}, {x = 0, y = 345.59, z = 0}, 1205, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "1", {x = -6.559, y = 1.034, z = -48.82}, {x = 0, y = 185.524, z = 0}, 1205, nil, nil, false, 0, true)
    this:GetQuestNpcActor(npcs.Npc1316.alias, 76222):DoFreeStyle(8080, true, nil, true, true, false, true)
end

function Quest76222:OnSubFinish7622203(arg1)
    print("OnSubFinish7622203")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
        this:RecycleAllRes()
    end)
end

return Quest76222
