require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76225 = class("Quest76225", QuestActorProxy)
Quest76225.defaultAlias = "Quest76225"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76225:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76225:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7622501"] = self.OnSubStart7622501,
        ["7622502"] = self.OnSubStart7622502,
        ["7622503"] = self.OnSubStart7622503
    }
end

function Quest76225:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7622501"] = self.OnSubFinish7622501,
        ["7622502"] = self.OnSubFinish7622502,
        ["7622503"] = self.OnSubFinish7622503
    }
end

function Quest76225:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7622502"] = self.OnSubFailed7622502, ["7622503"] = self.OnSubFailed7622503}
end

function Quest76225:Start()
    print("Start")
end

function Quest76225:OnDestroy()
    print("OnDestroy")
end

function Quest76225:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76225:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76225:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7622503N1318Trigger")
    this:ActorDestroy("Q7622501Trigger", 76225)
    this:SafeDestroyQuestNpc(npcs.Npc1318_1.alias, 3)
    this:RemoveLocalGadget(73177010, "0")
    this:RemoveLocalGadget(73177011, "1")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177035, "3")
    this:RemoveLocalGadget(73167060, "4")
    this:RemoveLocalGadget(73167060, "5")
    this:RecycleAllRes()
end

function Quest76225:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7622501Trigger", 76225)
end

function Quest76225:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7622501 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7622502 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    else
        if false then
        end
    end
end

function Quest76225:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76225:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest76225:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76225:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76225:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 2657.092, y = 334.922, z = 4659.848}, 30, 73177007, 10000133, 7622502) then
        actorUtils.FinishQuestWithParam({false}, {7622502})
    else
        if this:GetSubQuestState(7622502) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76225:OnSubStart7622501(arg1)
    print("OnSubStart7622501")
    actorMgr:CreateActorWithPos("Q7622501Trigger", "Actor/Gadget/Q7622501Trigger", 70900002, 0, points.Q7622501Trigger.pos, points.Q7622501Trigger.rot, true, false, 3, nil, 0, 76225)
end

function Quest76225:OnSubFinish7622501(arg1)
    print("OnSubFinish7622501")
end

function Quest76225:OnSubStart7622502(arg1)
    print("OnSubStart7622502")
    this:RepeatSitCheck()
end

function Quest76225:OnSubFinish7622502(arg1)
    print("OnSubFinish7622502")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest76225:OnSubFailed7622502(arg1)
    print("OnSubFailed7622502")
    this:RecycleAllRes()
end

function Quest76225:OnSubStart7622503(arg1)
    print("OnSubStart7622503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7622503, 0, 40, 0.5, npcs.Npc1318_1.id)
    this:CreateLocalGadget(73177010, "0", {x = 2657.431, y = 335.938, z = 4662.637}, {x = 0, y = 280, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "1", {x = 2658.699, y = 335.938, z = 4662.414}, {x = 0, y = 280, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 2656.352, y = 335.938, z = 4662.828}, {x = 0, y = 95.413, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177041, "3", {x = 2657.449, y = 336.716, z = 4663.006}, {x = 0, y = 280, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest76225:OnSubFinish7622503(arg1)
    print("OnSubFinish7622503")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1318_1.alias)
        this:RecycleAllRes()
    end)
end

function Quest76225:OnSubFailed7622503(arg1)
    print("OnSubFailed7622503")
    this:RecycleAllRes()
end

return Quest76225
